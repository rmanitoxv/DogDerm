<template>
    <div class="flex justify-center ">
        <div class="shadow-2xl rounded-xl mx-[2.5rem] w-full">
            <div class="m-[1.25rem]">
                <p class="text-first text-[2rem] font-medium">
                    {{diseaseCount}}
                </p>
                <p class="font-medium">
                    Skin Diseases
                </p>
            </div>
        </div>
        <div class="shadow-2xl rounded-xl w-full">
            <div class="m-[1.25rem]">
                <p class="text-first text-[2rem] font-medium">
                    {{clinicsCount}}
                </p>
                <p class="font-medium">
                    Clinics
                </p>
            </div>
        </div>
        <div class="shadow-2xl rounded-xl mx-[2.5rem] w-full">
            <div class="m-[1.25rem]">
                <p class="text-first text-[2rem] font-medium">
                    {{userCount}}
                </p>
                <p class="font-medium">
                    Users
                </p>
            </div>
        </div>
    </div>
</template>
<script>
import parseCookie from '../utils/parseCookie'
export default {
    methods: {
        getCounts() {
            axios.get('/api/user/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                this.userCount = response.data.length
            })
            .catch((error) => {
                console.log(error)
            })
            axios.get('/api/disease/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                this.diseaseCount = response.data.length
            })
            .catch((error) => {
                console.log(error)
            })
            axios.get('/api/clinics/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                this.clinicsCount = response.data.length
            })
            .catch((error) => {
                console.log(error)
            })
        }
    },
    data(){
        return{
            userCount: 0,
            clinicsCount: 0,
            diseaseCount: 0
        }
    },
    created(){
        this.getCounts()
    }
}
</script>