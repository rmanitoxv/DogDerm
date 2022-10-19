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
            <div class="flex mt-32 justify-center">
                <div class="ml-[4.5rem] text-center">
                    <img v-if="url" :src="url" class="rounded-full w-[21.625rem] h-[21.625rem] object-cover" />
                    <img v-else src="/images/sample-profile.svg"
                        class="rounded-full w-[21.625rem] h-[21.625rem] object-cover" />
                    <label for="upload"
                        class="w-[15.5rem] bg-first text-white py-3 rounded-2xl mt-[2.5rem] text-lg cursor-pointer">
                        Upload Image
                    </label>
                    <input type="file" :disabled="validated == 1" id="upload" accept=".jpeg,.jpg,.png,.svg"
                        class="hidden" @input="getImage()" />
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-2xl mr-6">
                            Disease:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Disease" class="login__input" id="disease" >
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Overview:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0 break-words overflow-y-auto">
                            <input type="text" placeholder="Overview" class="login__input" id="overview">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Causes:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Causes" class="login__input" id="causes">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Treatment:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Treatment" class="login__input" id="treatment">
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Prevention:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input type="text" placeholder="Prevention" class="login__input" id="prevention">
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
            this.saving = 1
            this.status = 'Saving...'
            this.buttonClass = 'w-[7.5rem] bg-grey cursor-none text-white py-2 rounded-3xl mt-[2.5rem] text-lg'
            axios.post('/api/disease/', {
                disease: disease.value,
                overview: overview.value,
                causes: causes.value,
                treatment: treatment.value,
                prevention: prevention.value,
                url: this.url
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
                    console.log(this.dburl)
                    console.log(error)
                    this.response = error.response.data.message
                })
        },
        async afterComplete(e) {
            if (this.file) {
                const file = e;
                const re = /(?:\.([^.]+))?$/;
                const ext = re.exec(file.name)[1];
                const fileName = uuid() + '.' + ext ;
                const storage = getStorage();
                const storageRef = ref(storage, 'images/' + fileName);
                await uploadBytesResumable(storageRef, file);
                getDownloadURL(storageRef)
                    .then((url) => {
                        this.url = url
                    })
                    .catch((err) => {
                        console.log(err)
                    })
            }
            this.addDisease()
        },
        getImage() {
            this.file = upload.files[0];
            this.url = URL.createObjectURL(this.file);
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
            buttonClass: 'w-[7.5rem] bg-first text-white py-2 rounded-3xl mt-[2.5rem] text-lg'
        }
    }
}
</script>