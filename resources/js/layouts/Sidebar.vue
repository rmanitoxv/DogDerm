<template>
    <div>
        <div class="mx-[2rem] mt-[1.5rem]">
            <div class="flex mx-2 align-items-center mb-5">
                <button @click="sidebarFunction">
                    <img src="/images/list.svg" width="24" class="mr-3"/>
                </button>
                <span class="text-2xl text-first barlow">Dog</span>
                <span class="text-2xl text-second barlow">Derma</span>
            </div>
            <div class="flex mx-3 align-items-center mb-5">
                <img src="/images/sample-profile.svg" class="w-10 mr-2" />
                <div>
                    <p class="poppins text-2xl text-second m-0">Juan Dela Cruz</p>
                    <p class="poppins text-xs text-third">jdelacruz@email.com</p>
                </div>
            </div>
            <div v-if="currentRoute == 'AdminProfile'">
                <div class="flex bg-first p-3 rounded-md align-items-center">
                    <i class='bx bxs-user-circle text-xl text-white mr-4'></i>
                    <p class="poppins text-base text-white">Profile</p>
                </div>
            </div>
            <div v-else>
                <router-link to="/adminprofile">
                    <div class="flex p-3 rounded-md align-items-center">
                        <i class='bx bxs-user-circle text-xl text-fifth mr-4'></i>
                        <p class="poppins text-base text-fifth">Profile</p>
                    </div>
                </router-link>
            </div>
            <div v-if="currentRoute == 'AdminDiseases' || currentRoute == 'AddDisease' || currentRoute == 'EditDisease'">
                <div class="flex bg-first p-3 rounded-md align-items-center">
                    <i class='bx bxs-virus text-xl text-white mr-4'></i>
                    <p class="poppins text-base text-white">Disease</p>
                </div>
            </div>
            <div v-else>
                <router-link to="/admindiseases">
                    <div class="flex p-3 rounded-md align-items-center">
                        <i class='bx bxs-virus text-xl text-fifth mr-4'></i>
                        <p class="poppins text-base text-fifth">Disease</p>
                    </div>
                </router-link>
            </div>
            <div v-if="currentRoute == 'AdminClinics' || currentRoute == 'AddClinics' || currentRoute == 'EditClinics'">
                <div class="flex bg-first p-3 rounded-md align-items-center">
                    <i class='bx bxs-clinic text-xl text-white mr-4'></i>
                    <p class="poppins text-base text-white">Clinics</p>
                </div>
            </div>
            <div v-else>
                <router-link to="/adminclinics">
                    <div class="flex p-3 rounded-md align-items-center">
                        <i class='bx bxs-clinic text-xl text-fifth mr-4' ></i>
                        <p class="poppins text-base text-fifth">Clinics</p>
                    </div>
                </router-link>
            </div>
            <div v-if="currentRoute == 'AdminUsers' || currentRoute == 'AddUser' || currentRoute == 'EditUser'">
                <div class="flex bg-first p-3 rounded-md align-items-center mb-32">
                    <i class='bx bxs-user-account text-xl text-white mr-4'></i>
                    <p class="poppins text-base text-white">Users</p>
                </div>
            </div>
            <div v-else>
                <router-link to="/adminusers">
                    <div class="flex p-3 rounded-md align-items-center mb-32">
                        <i class='bx bxs-user-account text-xl text-fifth mr-4' ></i>
                        <p class="poppins text-base text-fifth">Users</p>
                    </div>
                </router-link>
            </div>
            
            <div class="flex p-3 rounded-md align-items-center">
                <a href="#" @click="logout">
                    <div class="sidebar-link flex align-items-center">
                        <i class='bx bx-log-in-circle text-xl text-fifth mr-4' ></i>
                        <span class="poppins text-base text-fifth">Logout</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</template>

<script>
import parseCookie from '../utils/parseCookie'
export default {
    created() {
        this.currentRoute;
    },
    computed: {
        currentRoute() {
            return this.$route.name;
        }
    },
    methods:{
        logout(){
            axios.post('/api/logout/', {}, {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                document.cookie = "token= ; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";
                this.$router.push({ path: "/"});
            })
            .catch((error) => {
                console.log(error)
            })
        }
    },
    props:{
        sidebarFunction: Function
    }
}
</script>
