<template>
    <div class="login">
            <div class="login__content">
                <div class="login__img">
                    <img src="/images/register-dog-vector.svg" alt="">
                </div>

                <div class="login__forms">
                    <!-- =====  SIGN IN =====  -->
                    <form action="" class="login__registre" id="login-in">
                        <h1 class="logo__title"><span>Dog</span>Derma </h1>
                        <h1 class="login__title">Sign In</h1>
    
                        <div class="login__box">
                            <i class='bx bx-user login__icon'></i>
                            <input type="text" placeholder="Username" class="login__input">
                        </div>
    
                        <div class="login__box">
                            <i class='bx bx-lock-alt login__icon'></i>
                            <input type="password" placeholder="Password" class="login__input">
                        </div>

                        <a href="Recover-New-Password.html" class="login__forgot">Forgot password?</a>

                        <a href="#" class="login__button">Sign In</a>

                        <div>
                            <span class="login__account">Don't have an account?</span>
                            <router-link to="/register"> <span class="login__signin" id="sign-up"> Register here!</span> </router-link>
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
            loginForm() {
                axios.post('/api/register/', {
                    
                })
            }
        }
    }
</script>
