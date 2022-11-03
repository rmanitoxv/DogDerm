<template>
    <header class="header" id="header">
        <nav class="nav container">
            <router-link to="/" class="nav__logo">
                <span class="text-2xl text-first barlow">Dog</span>
                <span class="text-2xl text-second barlow">Derma</span>
            </router-link>
            <div class="nav__menu" id="nav-menu">
                <div class="nav__list">
                    <div class="nav__item" v-if="currentRoute == 'Homepage'">
                        <router-link to="/" class="nav__link active-link">
                            <i class='text-first bx bx-home-alt nav__icon'></i>
                            <span class="nav__name">Home</span>
                        </router-link>
                    </div>
                    <div class="nav__item" v-else>
                        <router-link to="/" class="nav__link">
                            <i class='text-first bx bx-home-alt nav__icon'></i>
                            <span class="nav__name">Home</span>
                        </router-link>
                    </div>
                    <div class="nav__item" v-if="currentRoute == 'Results'">
                        <div>
                            <router-link to="/results" class="nav__link active-link">
                                <i class='text-first bx bxs-bar-chart-alt-2 nav__icon'></i>
                                <span class="nav__name">Results</span>
                            </router-link>
                        </div>
                    </div>
                    <div class="nav__item" v-else>
                        <div>
                            <router-link to="/results" class="nav__link">
                                <i class='text-first bx bxs-bar-chart-alt-2 nav__icon'></i>
                                <span class="nav__name">Results</span>
                            </router-link>
                        </div>
                    </div>
                    <div class="nav__item" v-if="currentRoute == 'Upload' || currentRoute == 'UploadResult'">
                        <router-link to="/upload" class="nav__link active-link">
                            <i class='text-first bx bxs-camera nav__icon'></i>
                            <span class="nav__name">Upload</span>
                        </router-link>
                    </div>
                    <div class="nav__item" v-else>
                        <router-link to="/upload" class="nav__link">
                            <i class='text-first bx bxs-camera nav__icon'></i>
                            <span class="nav__name">Upload</span>
                        </router-link>
                    </div>
                    <div class="nav__item" v-if="currentRoute == 'Clinics'">
                        <router-link to="/clinics" class="nav__link active-link">
                            <i class='text-first bx bxs-location-plus nav__icon'></i>
                            <span class="nav__name">Clinics</span>
                        </router-link>
                    </div>
                    <div class="nav__item" v-else>
                        <router-link to="/clinics" class="nav__link">
                            <i class='text-first bx bxs-location-plus nav__icon'></i>
                            <span class="nav__name">Clinics</span>
                        </router-link>
                    </div>
                    <div class="nav__item lg:mr-10" v-if="currentRoute == 'Diseases'">
                        <router-link to="/diseases" class="nav__link active-link">
                            <i class='text-first bx bxs-virus nav__icon'></i>
                            <span class="nav__name">Diseases</span>
                        </router-link>
                    </div>
                    <div class="nav__item lg:mr-10" v-else>
                        <router-link to="/diseases" class="nav__link">
                            <i class='text-first bx bxs-virus nav__icon'></i>
                            <span class="nav__name">Diseases</span>
                        </router-link>
                    </div>
                    <div class="flex align-items-center" v-if="authenticated == false">
                        <div class="nav__item__register" v-if="currentRoute == 'Login'">
                            <router-link to="/login" class="nav__link active-link">
                                <span class="nav__name">Login</span>
                            </router-link>
                        </div>
                        <div class="nav__item__register" v-else>
                            <router-link to="/login" class="nav__link">
                                <span class="nav__name">Login</span>
                            </router-link>
                        </div>
                        <div class="nav__item__register ml-4">
                            <router-link to="/register" class="nav__link py-2.5 px-6 rounded-3xl text-white button-color">
                                <span>Register</span>
                            </router-link>
                        </div>
                    </div>
                    <div class="nav__item__register" v-else>
                        <div class="nav-item dropdown has-arrow main-drop">
                            <a href="javascript:void(0)" class="dropdown-toggle nav-divnk" data-bs-toggle="dropdown">
                            <span class="adminmodule user-img">
                                <img src="/images/sample-profile.svg" alt="" class="w-5 inline"/>
                                {{ name }}
                            </span>
                            </a>
                            <div class="dropdown-menu">
                                <router-link class="dropdown-item" to="/profile">Profile</router-link>
                                <button class="dropdown-item" @click="logout"> Logout</button>
                            </div>
                        </div>
                    </div>
                        
                </div>
            </div>
            <img src="/images/sample-profile.svg" alt="" class="nav__img" />
        </nav>
    </header>
</template>

<script>
import parseCookie from '../utils/parseCookie'
export default {
    created() {
        this.currentRoute;
        this.checkAuth();
    },
    computed: {
        currentRoute() {
            return this.$route.name;
        }
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
                    this.authenticated = true
                    this.name = response.data.first_name + " " + response.data.last_name
                })
                .catch((error) => {
                    document.cookie = "token= ; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";
                    console.log(error)
                })
            }
        },
        logout(){
            axios.post('/api/logout/', {}, {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                this.authenticated = false
                document.cookie = "token= ; Expires=Thu, 01 Jan 1970 00:00:01 GMT;";
                this.$router.push({ path: "/"});
            })
            .catch((error) => {
                console.log(error)
            })
        }
    },
    data() {
        return {
            authenticated: false,
            name: ''
        }
    },
    watch:{
        $route (to, from){
            this.checkAuth()
        }
    },
}
</script>
