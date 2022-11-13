<template>
    <div>
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="/images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <form @submit.prevent="afterComplete(file)">
            <div class="flex my-32 justify-center">
                <div class="ml-[4.5rem] text-center">
                    <img v-if="url" :src="url" class="rounded-full w-[15rem] h-[15rem] object-cover" />
                    <img v-else src="/images/sample-profile.svg"
                        class="rounded-full w-[15rem] h-[15rem] object-cover" />
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
                            <input type="text" placeholder="Disease" class="login__input" id="disease" >
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Overview:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0 break-words overflow-y-auto">
                            <textarea placeholder="Overview" class="login__input resize-none" rows="10" id="overview"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Causes:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea placeholder="Causes" class="login__input resize-none" rows="10" id="causes"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Symptoms:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea placeholder="Symptoms" class="login__input resize-none" rows="3" id="symptoms"></textarea>
                        </div>
                    </div>
                    <div class="flex justify-end">
                        <button type="button" class="w-[10rem] text-first border-[.15rem] border-first py-[.35rem] rounded-2xl mt-3 text-lg" @click="addSymptoms">Add Symptoms</button>
                    </div>
                    <div v-if="symptoms.length" class="ml-40 w-[30rem]">
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
                            <textarea placeholder="Treatment" class="login__input resize-none" rows="10" id="treatment"></textarea>
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-xl mr-6">
                            Prevention:
                        </label>
                        <div class="login__box1 w-[30rem] mt-0">
                            <textarea placeholder="Prevention" class="login__input resize-none" rows="10" id="prevention"></textarea>
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
    methods: {
        addDisease() {
            axios.post('/api/disease/', {
                disease: disease.value,
                overview: overview.value,
                causes: causes.value,
                treatment: treatment.value,
                prevention: prevention.value,
                image: this.url,
                symptoms: JSON.stringify(this.symptoms)
            },
                {
                    headers: {
                        "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                    }
                })
                .then((response) => {
                    this.$router.push({name: 'AdminDiseases'})
                })
                .catch((error) => {
                    console.log(this.url)
                    console.log(error)
                    this.response = error.response.data.message
                    this.saving = 0
                    this.status = 'Save'
                    this.buttonClass = 'w-[7.5rem] bg-first cursor-none text-white py-2 rounded-2xl mt-[2.5rem] text-lg'
                })
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
                this.url = fileName
            }
            this.addDisease()
        },
        getImage() {
            this.file = upload.files[0];
            this.url = URL.createObjectURL(this.file);
        },
        addSymptoms() {
            if (symptoms.value){
                this.symptoms.push(symptoms.value)
                symptoms.value = null
            }
        },
        removeSymptom(e){
            let index = this.symptoms.indexOf(e);
            this.symptoms.splice(index, 1);
        }
    },
    props: {
        sidebarFunction: Function
    },
    data() {
        return{
            response: null,
            url: null,
            file: null,
            dburl: null,
            status: 'Add',
            saving: 0,
            buttonClass: 'w-[7.5rem] bg-first text-white py-2 rounded-2xl mt-[2.5rem] text-lg',
            symptoms: []
        }
    }
}
</script>