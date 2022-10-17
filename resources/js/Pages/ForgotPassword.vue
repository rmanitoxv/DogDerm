<template>
    <div class="login">
            <div class="login__content">
                <div class="recoveracc__img">
                    <img src="/images/login-dog-vector.svg" alt="">
                </div>

                <div class="login__forms">
                    <!-- =====  RECOVER YOUR ACCOUNT =====  -->
                    <form action="" class="login__registre" id="login-in">
                        <h1 class="logo__title"><span>Dog</span>Derma </h1>
                        <h1 class="login__title">Recover your account</h1>

                        <div>
                            <span class="login__account">Enter your email for verification process.</span>
                        </div>
    
                        <div class="recoveracc__box">
                            <i class='bx bx-at login__icon'></i>
                            <input type="text" placeholder="Email" class="login__input">
                        </div>

                        <router-link to="/resetpassword" class="login__button" id="sign-up">Continue</router-link>
                        <div>
                            <span class="login__account">Want to switch accounts?</span>

                            <router-link to="/login">
                                <span class="login__signin"> Sign in here!</span>
                            </router-link>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</template>
