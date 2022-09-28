<template>
    <div>
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm h-20">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.svg" />
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <div class="navbar-nav flex justify-center w-full align-items-center">
                        <div class="mx-8 nav-item" v-if="currentRoute == 'Homepage'"><span class="lg:nav-active text-lg font-bold">Home</span></div>
                        <div class="mx-8 nav-item" v-else><router-link to="/" class="lg:nav text-lg font-bold"><span>Home</span></router-link></div>

                        <div class="mx-8"><router-link to="/about" class="lg:nav text-lg font-bold"><span>About</span></router-link></div>
                        <div class="mx-8"><router-link to="/clinics" class="lg:nav text-lg font-bold"><span>Clinics</span></router-link></div>
                        <div class="mx-8"><router-link to="/diseases" class="lg:nav text-lg font-bold"><span>Diseases</span></router-link></div>
                        <div class="mx-8"><router-link to="/contact" class="lg:nav text-lg font-bold"><span>Contact</span></router-link></div>
                    </div>

                    <!-- Right Side Of Navbar -->
                    <div class="navbar-nav flex justify-center ms-auto align-items-center">
                        <!-- Authentication Links -->
                        <div class="mx-8" v-if="currentRoute == 'Login'"><span class="lg:nav-active text-lg font-bold">Login</span></div>
                        <div class="mx-8" v-else><router-link to="/login" class="lg:nav text-lg font-bold"><span>Login</span></router-link></div>
                        
                        <div><router-link to="/register" tag="button" class="btn btn-primary text-lg rounded-3xl text-white" style="background: #E05534; border:none;"><span>Register</span></router-link></div>

                    </div>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
    export default {
        created(){
            this.currentRoute;
        },
        computed:{
            currentRoute(){
                return this.$route.name;
            }
        }
    }
</script>
