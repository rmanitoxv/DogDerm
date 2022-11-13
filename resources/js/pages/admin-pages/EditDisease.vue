<template>
    <div class="flex flex-col my-[6.25rem]">
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="/images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <form @submit.prevent="afterComplete(file)">
            <div class="flex justify-center">
                <div class="ml-[2rem] text-center">
                    <img :src="url" class="rounded-full w-[15rem] h-[15rem] object-cover" />
                    <label for="upload"
                        class="w-[12rem] bg-first text-white py-2 rounded-3xl mt-[2.5rem] text-lg cursor-pointer">
                        Upload Image
                    </label>
                    <input type="file" :disabled="validated == 1" id="upload" accept=".jpeg,.jpg,.png,.svg"
                        class="hidden" @input="getImage()" />
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-xl mr-6">
                            Disease:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <input type="text" placeholder="Disease" class="login__input" id="disease" :value="datas.disease">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Overview:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea placeholder="Overview" class="login__input resize-none" rows="10" id="overview" :value="datas.overview"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Causes:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea type="text" placeholder="Causes" class="login__input resize-none" rows="10" id="causes" :value="datas.causes"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Symptoms:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea type="text" placeholder="Symptoms" class="login__input resize-none" rows="10" id="symptoms"></textarea>
                        </div>
                    </div>
                    <div class="flex justify-end">
                        <button type="button" class="w-[10rem] text-first border-[.15rem] border-first py-[.35rem] rounded-2xl mt-3 text-lg" @click="addSymptoms">Add Symptoms</button>
                    </div>
                    <div v-if="symptoms.length" class="ml-40">
                        Symptoms:
                        <div v-for="item in symptoms" class="flex">
                            <button type="button" class="mr-3" @click="removeSymptom(item)"><i class="bi bi-x-lg text-red"></i></button>{{item}}
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Treatment:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea type="text" placeholder="Treatment" class="login__input resize-none" rows="10" id="treatment" :value="datas.treatment"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Prevention:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea type="text" placeholder="Prevention" class="login__input resize-none" rows="10" id="prevention" :value="datas.prevention"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-[1rem] justify-end">
                        <button :class="buttonClass" :disabled="saving">
                            {{ status }}
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
import { getStorage, ref, uploadBytesResumable, getDownloadURL } from "firebase/storage";
import { v4 as uuid } from 'uuid';
export default {
    data() {
        return {
            id: this.$route.params.id,
            datas: {},
            response: null,
            url: null,
            url: null,
            status: 'Edit',
            saving: 0,
            buttonClass: 'w-[7.5rem] bg-first text-white py-2 rounded-2xl mt-[2.5rem] text-lg',
        }
    },
    methods: {
        editDisease() {
            axios.put(`/api/disease/${this.id}`, {
                disease: disease.value,
                overview: overview.value,
                causes: causes.value,
                treatment: treatment.value,
                prevention: prevention.value,
                url: this.dburl,
                symptoms: JSON.stringify(this.symptoms)
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
                    this.saving = 0
                    this.status = 'Edit'
                    this.buttonClass = 'w-[7.5rem] bg-first cursor-none text-white py-2 rounded-2xl mt-[2.5rem] text-lg'
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
                this.dburl = response.data.url
                const storage = getStorage();
                const storageRef = ref(storage, 'images/' + this.datas.url);
                getDownloadURL(storageRef)
                    .then((url) => {
                        this.url = url
                    })
                this.symptoms = JSON.parse(this.datas.symptoms)
            })
            .catch((error) => {
                console.log(error)
            })
        },
        getImage() {
            this.file = upload.files[0];
            this.url = URL.createObjectURL(this.file);
        },
        removeSymptom(e){
            let index = this.symptoms.indexOf(e);
            this.symptoms.splice(index, 1);
        },
        async afterComplete(e) {
            this.saving = 1
            this.status = 'Saving...'
            this.buttonClass = 'w-[7.5rem] bg-grey cursor-none text-white py-2 rounded-2xl mt-[2.5rem] text-lg'
            if (this.file) {
                const file = e;
                const re = /(?:\.([^.]+))?$/;
                const ext = re.exec(file.name)[1];
                const fileName = uuid() + '.' + ext ;
                const storage = getStorage();
                const storageRef = ref(storage, 'images/' + fileName);
                await uploadBytesResumable(storageRef, file);
                this.dburl = fileName
            }
            this.editDisease()
        },
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