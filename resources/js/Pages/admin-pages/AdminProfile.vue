<template>
    <div class="flex flex-col">
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
                        :class="labelClass">
                        Upload Image
                    </label>
                    <input type="file" :disabled="validated == 1" id="upload" accept=".jpeg,.jpg,.png,.svg"
                        class="hidden" @input="getImage()" />
                </div>
                <div class="mt-[2.5rem] mx-[5.5rem] ">
                    <div class="flex align-items-center justify-end">
                        <label class="text-2xl mr-6">
                            First Name:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="text" placeholder="First Name" class="login__input"
                                id="first_name" :value="datas.first_name" required />
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Last Name:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="text" placeholder="Last Name" class="login__input"
                                id="last_name" :value="datas.last_name" required />
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Email:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="text" placeholder="Email" class="login__input"
                                id="email" :value="datas.email" required />
                        </div>
                    </div>
                    <div class="flex align-items-center mt-3 justify-end">
                        <label class="text-2xl mr-6">
                            Password:
                        </label>
                        <div class="login__box1 w-[18.75rem] mt-0">
                            <input :disabled="validated == 1" type="password" placeholder="Password"
                                class="login__input" id="password" value="" />
                        </div>
                    </div>
                    <div class="flex align-items-center mt-[1rem] justify-end">
                        <button type="button"
                            class="mr-[1.125rem] w-[7.5rem] text-first border-[.15rem] border-first py-[.35rem] rounded-3xl mt-[2.5rem] text-lg"
                            @click="editProfile()">
                            Edit
                        </button>
                        <button :class="buttonClass" :disabled="validated == 1">
                            {{ buttonLabel }}
                        </button>
                    </div>
                    <p v-if="response" :class="responseClass">{{response}}</p>
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
    props: {
        sidebarFunction: Function
    },
    data() {
        return {
            validated: 1,
            datas: {},
            response: null,
            responseClass: null,
            url: null,
            file: null,
            dburl: null,
            isLoading: false,
            labelClass: 'w-[15.5rem] bg-grey text-white py-3 rounded-2xl mt-[2.5rem] text-lg',
            buttonClass: 'w-[7.5rem] bg-grey text-white py-2 rounded-3xl mt-[2.5rem] text-lg',
            buttonLabel: 'Save'
        }
    },
    mounted() {
        this.getUserData()
    },
    methods: {
        editProfile() {
            this.validated = !this.validated
            if (this.labelClass == 'w-[15.5rem] bg-grey text-white py-3 rounded-2xl mt-[2.5rem] text-lg'){
                this.labelClass = 'w-[15.5rem] bg-first text-white py-3 rounded-2xl mt-[2.5rem] text-lg cursor-pointer'
                this.buttonClass = "w-[7.5rem] bg-first text-white py-2 rounded-3xl mt-[2.5rem] text-lg"
            }
            else{
                this.labelClass = 'w-[15.5rem] bg-grey text-white py-3 rounded-2xl mt-[2.5rem] text-lg'
                this.buttonClass = "w-[7.5rem] bg-grey text-white py-2 rounded-3xl mt-[2.5rem] text-lg"
            }
        },
        getUserData() {
            axios.get('/api/get_token/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
                .then((response) => {
                    this.datas = response.data
                    const storage = getStorage();
                    const storageRef = ref(storage, 'images/' + response.data.url);
                    getDownloadURL(storageRef)
                    .then((url) => {
                        this.url = url
                    })
                    .catch((err) => {
                        console.log(err)
                    })
                })
                .catch((error) => {
                    console.log(error)
                })
        },
        saveProfile(id) {
            if (password.value == ''){
                axios.put(`/api/user/${id}`, {
                    first_name: first_name.value,
                    last_name: last_name.value,
                    email: email.value,
                    url: this.dburl
                },
                    {
                        headers: {
                            "Authorization": `Bearer ${parseCookie(document.cookie).token}`,
                        }
                    })
                    .then((response) => {
                        this.datas = response.data
                        this.validated = 1
                        this.response = "Successfully Saved"
                        this.responseClass = "text-green text-end"
                        this.buttonLabel = 'Save'
                        this.labelClass = 'w-[15.5rem] bg-grey text-white py-3 rounded-2xl mt-[2.5rem] text-lg'
                    })
                    .catch((error) => {
                        this.response = "There was an Error Editing Profile"
                        this.responseClass = "text-red text-end"
                        console.log(error)
                    })
            }
            else{
                axios.put(`/api/user/${id}`, {
                    first_name: first_name.value,
                    last_name: last_name.value,
                    email: email.value,
                    password: password.value,
                    url: this.dburl
                },
                    {
                        headers: {
                            "Authorization": `Bearer ${parseCookie(document.cookie).token}`,
                        }
                    })
                    .then((response) => {
                        this.datas = response.data
                        this.validated = 1
                        this.response = "Successfully Saved"
                        this.responseClass = "text-green text-end"
                        this.buttonLabel = 'Save'
                        this.labelClass = 'w-[15.5rem] bg-grey text-white py-3 rounded-2xl mt-[2.5rem] text-lg'
                    })
                    .catch((error) => {
                        this.response = "There was an Error Editing Profile"
                        this.responseClass = "text-red text-end"
                        console.log(error)
                    })
            }
        },
        async afterComplete(e) {
            this.validated = 1
            this.buttonClass = "w-[7.5rem] bg-grey text-white py-2 rounded-3xl mt-[2.5rem] text-lg"
            this.buttonLabel = 'Saving...'
            if (this.file) {
                this.isLoading = true;
                const file = e;
                const re = /(?:\.([^.]+))?$/;
                const ext = re.exec(file.name)[1];
                const fileName = uuid() + '.' + ext ;
                const storage = getStorage();
                const storageRef = ref(storage, 'images/' + fileName);
                await uploadBytesResumable(storageRef, file);
                this.dburl = fileName
            }
            this.saveProfile(this.datas.id)
        },
        getImage() {
            this.file = upload.files[0];
            this.url = URL.createObjectURL(this.file);
        }
    }
}
</script>