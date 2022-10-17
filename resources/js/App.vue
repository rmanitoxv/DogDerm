<template>
    <div>
        <Style />
        <div>
            <div v-if="isAdmin == 0">
                <Navbar />
                <router-view></router-view>
            </div>
            <div v-else>
                <div v-bind:class="sidebarClass">
                    <Sidebar :sidebarFunction="sidebarFunction"/>
                </div>                
                <div v-bind:class="bodyClass">
                    <router-view :sidebarFunction="sidebarFunction"></router-view>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import Navbar from './layouts/Navbar.vue'
    import Sidebar from './layouts/Sidebar.vue'
    import Style from './layouts/Style.vue'
    import parseCookie from './utils/parseCookie'
    export default {
        components: {
            Navbar,
            Sidebar,
            Style
        },
        methods: {
            checkAuth() {
                if (parseCookie(document.cookie).token){
                    axios.get('/api/get_token/', {
                        headers: {
                            "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                        }
                    })
                    .then((response) => {
                        if (response.data.isAdmin == 1){
                            this.isAdmin = 1;
                        }
                    })
                    .catch((error) => {
                        console.log(error)
                    })
                }
                else{
                    this.isAdmin = 0
                }
            },
            sidebarFunction(){
                if (this.sidebarClass == "sidebar"){
                    this.sidebarClass = "sidebar-hidden"
                    this.bodyClass = "admin-body-hidden"
                }
                else{
                    this.sidebarClass = "sidebar"
                    this.bodyClass = "admin-body"
                }
            }
        },
        data(){
            return {
                isAdmin: '0',
                sidebarClass: "sidebar",
                bodyClass: "admin-body",
            }
        },
        created() {
            this.checkAuth();
        },
        watch:{
            $route (to, from){
                this.checkAuth()
            }
        },
    }
</script>