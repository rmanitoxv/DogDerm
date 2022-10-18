<template>
    <div class="flex flex-col mt-[6.25rem]">
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="/images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <form @submit.prevent="editDisease()">
            <div class="flex justify-center">
                <div class="ml-[4.5rem] text-center">
                    <img src="/images/sample-profile.svg" />
                    <button class="w-[15.5rem] bg-first text-white py-3 rounded-2xl mt-[2.5rem] text-lg"> Upload Image
                    </button>
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-2xl mr-6">
                            Disease:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Disease" class="login__input" id="disease" :value="datas.disease">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Overview:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Overview" class="login__input" id="overview" :value="datas.overview">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Causes:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Causes" class="login__input" id="causes" :value="datas.causes">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Treatment:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Treatment" class="login__input" id="treatment" :value="datas.treatment">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Prevention:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Prevention" class="login__input" id="prevention" :value="datas.prevention">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-[1rem] justify-end">
                        <button class="w-[7.5rem] bg-first text-white py-2 rounded-3xl mt-[2.5rem] text-lg">
                            Edit
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
    data() {
        return {
            id: this.$route.params.id,
            datas: {},
            response: null
        }
    },
    methods: {
        editDisease() {
            axios.put(`/api/disease/${this.id}`, {
                disease: disease.value,
                overview: overview.value,
                causes: causes.value,
                treatment: treatment.value,
                prevention: prevention.value
            },
                {
                    headers: {
                        "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                    }
                })
                .then((response) => {
                    this.$router.push({ name: 'AdminDiseases' })
                })
                .catch((error) => {
                    console.log(error)
                    this.response = error.response.data.message
                })
        },
        getData(id) {
            axios.get(`/api/disease/${id}`, {
                headers: {
                        "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                    }
            })
            .then((response) => {
                this.datas = response.data
            })
            .catch((error) => {
                console.log(error)
            })
        }
    },
    created() {
        this.getData(this.id)
    },
    props: {
        sidebarFunction: Function
    },
}
</script>
<style>
body{
    height: auto;
}
</style>