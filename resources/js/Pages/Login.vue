<template>
    <!-- NEW UI!!!!! -->
        <div class="login">
            <div class="login__content">
                <div class="login__img">
                    <img src="/images/register-dog-vector.svg" alt="">
                </div>

                <div class="login__forms">
                    <!-- =====  SIGN IN =====  -->
                    <form action="" class="login__registre" id="login-in" @submit.prevent="loginForm">
                        <h1 class="logo__title"><span>Dog</span>Derma </h1>
                        <h1 class="login__title">Sign In</h1>
    
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="Email" class="login__input" id="email">
                        </div>
    
                        <div class="login__box">
                            <i class='bx bx-lock-alt login__icon'></i>
                            <input type="password" placeholder="Password" class="login__input" id="password">
                        </div>

                        <router-link to="/forgotpassword" class="login__forgot">Forgot password?</router-link>

                        <button class="login__button w-full">Sign In</button>

                        <div>
                            <span class="login__account">Don't have an account?</span>
                            <router-link to="/register">
                                <span class="login__signin" id="sign-up"> Register here!</span>
                            </router-link>
                        </div>
                        <p v-if="response" class="text-red text-end">{{response}}</p>
                    </form>
                </div>
            </div>
        </div>

</template>

<script>
import parseCookie from '../utils/parseCookie';
export default {
    methods: {
        loginForm(){
            axios.post('/api/login/', {
                email: email.value,
                password: password.value
            })
            .then((response) => {
                document.cookie =`token=${response.data.token}`;
                if (response.data.user.isAdmin == 1){
                    this.$router.push({ name: "AdminProfile" })
                }
                else{
                    this.$router.push({ name: "Homepage" })
                }
            })
            .catch((error) => {
                console.log(error)
                this.response = error.response.data.message
            })
        }
    },
    data() {
        return{
            response: null
        }
    }
}
</script>
