<template>
    <div>
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="/images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <form @submit.prevent="addClinics()">
            <div class="flex mt-32 justify-center">
                <div class="ml-[4.5rem] text-center">
                    <img src="/images/sample-profile.svg" />
                    <button class="w-[15.5rem] bg-first text-white py-3 rounded-2xl mt-[2.5rem] text-lg"> Upload Image
                    </button>
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-2xl mr-6">
                            Clinic Name:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Clinic Name" class="login__input" id="clinic_name">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Address:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Address" class="login__input" id="clinic_address">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Mobile:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Mobile" class="login__input" id="clinic_mobile">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Landline:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Landline" class="login__input" id="clinic_landline">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Email:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Email" class="login__input" id="clinic_email">
                        </div>
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
        addClinics() {
            axios.post('/api/clinics/', {
                clinic_name: clinic_name.value,
                clinic_address: clinic_address.value,
                clinic_mobile: clinic_mobile.value,
                clinic_landline: clinic_landline.value,
                clinic_email: clinic_email.value
            },
                {
                    headers: {
                        "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                    }
                })
                .then((response) => {
                    this.$router.push({name: 'AdminClinics'})
                })
                .catch((error) => {
                    console.log(error)
                    this.response = error.response.data.message
                })
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