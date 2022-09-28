<template>
    <div class="flex justify-content-center">
        <div class="w-[45rem]" style="background-image: url('/images/login-bg.svg'); background-size: contain;">
            <div class="text-6xl lg:amiko font-semibold mb-8" style="padding-top: 9.813rem">
                Welcome back, <br/>
                we missed you!
            </div>
            <div class="text-xl lg:poppins lg:gray">
                If you don't have an account, <br/>
                you can <router-link to="/register" class="font-semibold lg:orange"><span>Register here!</span></router-link>
            </div>
            <div class="flex justify-end">
                <img src="/images/login-dog-vector.svg" />
            </div>
        </div>
        <div class="p-[4.375rem]">
        </div>
        <div class="w-96"  style="padding-top: 8.125rem">
            <form>
                <div class="mb-2.5">
                    <label for="email" class="lg:gray text-lg ml-5 lg:poppins">Email</label><br/>
                    <input type="text" class="text-[1.625rem] w-[25rem] lg:gray lg:inter rounded-lg pl-5" id="email" placeholder="user@email.com"/>
                </div>
                <div class="mb-7">
                    <label for="password" class="lg:gray text-lg ml-5 lg:poppins">Password</label><br/>
                    <input type="password" class="text-[1.625rem] w-[25rem] lg:gray lg:inter rounded-lg pl-5" id="password" placeholder="********" />
                </div>
                <div class="mb-[3.75rem]">
                    <router-link to="/forgot-password" class="lg:gray text-lg underline ml-5">Forgot Password?</router-link>
                </div>
                <div>
                    <button id="submit" class="btn btn-primary rounded-2xl w-full h-[3.75rem] text-lg font-semibold lg:poppins" style="background-color:#E05534"> Login </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>
