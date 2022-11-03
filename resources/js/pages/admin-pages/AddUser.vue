<template>
    <div>
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="/images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <form @submit.prevent="addUser()">
            <div class="flex mt-32 justify-center">
                <div class="ml-[4.5rem] text-center">
                    <img src="/images/sample-profile.svg" />
                    <button class="w-[15.5rem] bg-first text-white py-3 rounded-2xl mt-[2.5rem] text-lg"> Upload Image
                    </button>
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-2xl mr-6">
                            First Name:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="First Name" class="login__input" id="first_name">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Last Name:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Last Name" class="login__input" id="last_name">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Email:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Email" class="login__input" id="email">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Password:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="password" placeholder="Password" class="login__input" id="password">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Role:
                        </label>
                        <select id="role" clas1s="login__box w-[18.75rem] mt-0">
                            <option value="0">User</option>
                            <option value="1">Admin</option>
                        </select>
                    </div>
                    <div class="flex align-items-center mt-[1rem] justify-end">
                        <button class="w-[7.5rem] bg-first text-white py-2 rounded-3xl mt-[2.5rem] text-lg">
                            Add
                        </button>
                    </div>
                    <p v-if="response" class="text-red text-end">{{response}}</p>
                </div>
            </div>
        </form>
    </div>
</template>
<script>
import parseCookie from '../../utils/parseCookie'
export default {
    methods: {
        addUser() {
            axios.post('/api/user/', {
                first_name: first_name.value,
                last_name: last_name.value,
                email: email.value,
                password: password.value,
                isAdmin: role.value
            },
                {
                    headers: {
                        "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                    }
                })
                .then((response) => {
                    this.$router.push({name: 'AdminUsers'})
                })
                .catch((error) => {
                    console.log(error)
                    this.response = error.response.data.message
                })
        },
        test(){
            console.log(role.value)
        }
    },
    props: {
        sidebarFunction: Function
    },
    data() {
        return{
            response: null,
        }
    }
}
</script>