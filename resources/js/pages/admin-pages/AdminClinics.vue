<template>
    <div class="flex flex-col mt-[6.25rem]">
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="/images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <DatabaseCount />
        <div class="mt-[3.5rem] mx-[2.5rem]">
            <div class="flex justify-between">
                <div class="amiko font-bold text-[2rem]">
                    Clinics
                </div>
                <div>
                    <button class="w-[7.75rem] py-2 bg-blue1 text-white rounded-xl" @click="$router.push({name: 'AddClinics'})">
                        + Add New
                    </button>
                </div>
            </div>
            <div class="flex flex-col shadow-md rounded-xl w-full justify-center">
                <div class="flex h-[3rem] align-items-center">
                    <div class="font-medium w-full">&nbsp;</div>
                    <div class="font-medium w-[50%]">&nbsp;</div>
                    <div class="font-medium w-full">Clinic Name</div>
                    <div class="font-medium w-full">Address</div>
                    <div class="font-medium w-full">Mobile</div>
                    <div class="font-medium w-full">Landline</div>
                    <div class="font-medium w-full">Email</div>
                    <div class="font-medium w-[50%]">&nbsp;</div>
                </div>
                <div class="h-[65vh] overflow-auto">
                    <div v-for="item in clinics" >
                        <label v-bind:for="item.id" class="w-full">
                            <div class="flex h-[4.5rem] align-items-center text-sixth">
                                <div class="font-medium w-full text-center">
                                    <input type="checkbox" v-bind:id="item.id" />
                                </div>
                                <div class="font-medium w-[50%]">
                                    <img :src="item.url" class="w-9 h-9 object-cover rounded-full" />
                                </div>
                                <div class="font-medium w-full truncate">{{item.clinic_name}}</div>
                                <div class="font-medium w-full truncate">{{item.clinic_address}}</div>
                                <div class="font-medium w-full truncate">{{item.clinic_mobile}}</div>
                                <div class="font-medium w-full truncate">{{item.clinic_landline}}</div>
                                <div class="font-medium w-full truncate">{{item.clinic_email}}</div>
                                <div class="font-medium w-[50%] text-white">
                                    <button class="bg-blue w-[2.25rem] h-[2.25rem] rounded-xl mx-[0.25rem]"
                                        @click="$router.push({ name: 'EditClinics', params: { id: item.id } })">
                                        <i class='bx bx-edit text-base'></i>
                                    </button>
                                    <button class="bg-red w-[2.25rem] h-[2.25rem] rounded-xl mx-[0.25rem]"
                                        @click="deleteClinics(item.id)">
                                        <i class='bx bx-trash-alt'></i>
                                    </button>
                                </div>
                            </div>
                        </label>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import parseCookie from '../../utils/parseCookie'
import DatabaseCount from '../../components/DatabaseCount.vue'
import { getStorage, ref, uploadBytesResumable, getDownloadURL } from "firebase/storage";
export default {
    components: {
        DatabaseCount
    },
    props: {
        sidebarFunction: Function
    },
    data() {
        return {
            clinics: {}
        }
    },
    methods: {
        getClinics() {
            axios.get('/api/clinics/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
                .then((response) => {
                    this.clinics = response.data
                    for (let i=0; i < this.clinics.length; i++){
                        const storage = getStorage();
                        const storageRef = ref(storage, 'images/' + this.clinics[i].url);
                        getDownloadURL(storageRef)
                            .then((url) => {
                                this.clinics[i].url = url
                            })
                    }
                })
                .catch((error) => {
                    console.log(error)
                })
        },
        deleteClinics(id) {
            axios.delete(`/api/clinics/${id}`, {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                this.getClinics()
            })
            .catch((error) => {
                console.log(error)
            })
        }
    },
    created() {
        this.getClinics()
    }
}
</script>