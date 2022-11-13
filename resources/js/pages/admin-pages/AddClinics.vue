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
        addClinics() {
            axios.post('/api/clinics/', {
                image: this.url,
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
                    console.log(this.url)
                    console.log(error)
                    this.response = error.response.data.message
                    this.saving = 0
                    this.status = 'Save'
                    this.buttonClass = 'w-[7.5rem] bg-first cursor-none text-white py-2 rounded-3xl mt-[2.5rem] text-lg'
                })
        },
        async afterComplete(e) {
            this.saving = 1
            this.status = 'Saving...'
            this.buttonClass = 'w-[7.5rem] bg-grey cursor-none text-white py-2 rounded-3xl mt-[2.5rem] text-lg'
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
            this.addClinics()
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