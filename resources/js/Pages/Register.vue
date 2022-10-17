<template>
    <div class="login">
            <div class="login__content">
                <div class="login__img">
                    <img src="/images/register-dog-vector.svg" alt="">
                </div>

                <div class="login__forms">

                    <!-- =====  SIGN UP =====  -->
                    <form action="" class="login__create" id="login-up" @submit.prevent="registerForm">
                        <h1 class="logo__title"><span>Dog</span>Derma </h1>
                        <h1 class="login__title">Create Account</h1>
    
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="First Name" class="login__input" id="first_name">
                        </div>
    
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="Last Name" class="login__input" id="last_name">
                        </div>
    
                        <div class="login__box">
                            <i class='bx bx-at login__icon'></i>
                            <input type="text" placeholder="Email" class="login__input" id="email">
                        </div>

                        <div class="login__box">
                            <i class='bx bx-lock-alt login__icon'></i>
                            <input type="password" placeholder="Password" class="login__input" id="password">
                        </div>

                        <button class="login__button w-full">Create Account</button>

                        <div>
                            <span class="login__account">Already have an Account?</span>
                            <router-link to="/login"><span class="login__signup" id="sign-in"> Sign In here!</span></router-link>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</template>

<script>
import axios from 'axios';

    export default {
        methods: {
            registerForm() {
                axios.post('/api/register/', {
                    first_name: first_name.value, 
                    last_name: last_name.value,
                    email: email.value,
                    password: password.value,
                    isAdmin: 0
                })
                .then((response) => {
                    console.log(response)
                })
                .catch((error) => {
                    console.log(error)
                })
            }
        }
    }
</script>
