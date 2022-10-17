<template>
    <div class="login">
            <div class="login__content">
                <div class="recoveracc__img">
                    <img src="/images/login-dog-vector.svg" alt="">
                </div>

                <div class="login__forms">

                    <!-- =====  ENTER NEW PASSWORD =====  -->
                    <form action="" class="login__create" id="login-up">
                        <h1 class="logo__title"><span>Dog</span>Derma </h1>
                        <h1 class="login__title">Enter new password</h1>

                        <div>
                            <span class="login__account">Set the new password for <br> your account to access all features.</span>
                        </div>

                        <div class="newpass__box">
                            <i class='bx bx-lock-alt login__icon'></i>
                            <input type="password" placeholder="New Password" class="login__input">
                        </div>

                        <div class="confirmpass__box">
                            <i class='bx bx-lock-alt login__icon'></i>
                            <input type="password" placeholder="Confirm Password" class="login__input">
                        </div>

                        <div class="newpass-continue__button"> </div>

                        <router-link to="#" class="login__button">Continue</router-link>
                    </form>
                </div>
            </div>
        </div>
</template>

