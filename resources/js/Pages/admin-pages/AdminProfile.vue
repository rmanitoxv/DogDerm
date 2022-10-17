<template>
    <div class="flex flex-col">
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <form>
            <div class="flex mt-32 justify-center">
                <div class="ml-[4.5rem] text-center">
                    <img src="images/sample-profile.svg" />
                    <button class="w-[15.5rem] bg-first text-white py-3 rounded-2xl mt-[2.5rem] text-lg"> Upload Image </button>
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-2xl mr-6">
                            First Name:
                        </label>
                        <div class="login__box w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="text" placeholder="First Name" class="login__input" id="first_name" value="Juan">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Last Name:
                        </label>
                        <div class="login__box w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="text" placeholder="Last Name" class="login__input" id="last_name" value="Dela Cruz">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Email:
                        </label>
                        <div class="login__box w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="text" placeholder="Email" class="login__input" id="email" value="admin1@mail.com">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Password:
                        </label>
                        <div class="login__box w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="password" placeholder="Password" class="login__input" id="email" value="password">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-[1rem] justify-end">
                        <button type="button" class="mr-[1.125rem] w-[7.5rem] text-first border-[.15rem] border-first py-[.35rem] rounded-3xl mt-[2.5rem] text-lg" @click="editProfile()">
                            Edit
                        </button>
                        <button class="w-[7.5rem] bg-first text-white py-2 rounded-3xl mt-[2.5rem] text-lg">
                            Save
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</template>
<script>
export default {
    props: {
        sidebarFunction: Function
    },
    data() {
        return{
            validated: 1
        }
    },
    methods: {
        editProfile() {
            this.validated = !this.validated
        }
    }
}
</script>