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
                    Diseases
                </div>
                <div>
                    <button class="w-[7.75rem] py-2 bg-blue1 text-white rounded-xl"
                        @click="$router.push({name: 'AddDisease'})">
                        + Add New
                    </button>
                </div>
            </div>
            <div class="flex flex-col shadow-md rounded-xl w-full justify-center">
                <div class="flex h-[3rem] align-items-center">
                    <div class="font-medium w-[50%]">&nbsp;</div>
                    <div class="font-medium w-[50%]">&nbsp;</div>
                    <div class="font-medium w-full">Disease</div>
                    <div class="font-medium w-full">Overview</div>
                    <div class="font-medium w-full">Causes</div>
                    <div class="font-medium w-full">Treatment</div>
                    <div class="font-medium w-full">Prevention</div>
                    <div class="font-medium w-[50%]">&nbsp;</div>
                </div>
                <div class="h-[65vh] overflow-auto">
                    <div v-for="item in diseases">
                        <label v-bind:for="item.id" class="w-full">
                            <div class="flex h-[4.5rem] align-items-center text-sixth">
                                <div class="font-medium w-[50%] text-center">
                                    <input type="checkbox" v-bind:id="item.id" />
                                </div>
                                <div class="font-medium w-[50%]">
                                    <img :src="item.url" class="w-9 h-9 object-cover" />
                                </div>
                                <div class="font-medium w-full">{{item.disease}}</div>
                                <div class="font-medium w-full">{{item.overview}}</div>
                                <div class="font-medium w-full">{{item.causes}}</div>
                                <div class="font-medium w-full">{{item.treatment}}</div>
                                <div class="font-medium w-full">{{item.prevention}}</div>
                                <div class="font-medium w-[50%] text-white">
                                    <button class="bg-blue w-[2.25rem] h-[2.25rem] rounded-xl mx-[0.25rem]"
                                        @click="$router.push({ name: 'EditDisease', params: { id: item.id } })">
                                        <i class='bx bx-edit text-base'></i>
                                    </button>
                                    <button class="bg-red w-[2.25rem] h-[2.25rem] rounded-xl mx-[0.25rem]"
                                        @click="deleteDisease(item.id)">
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
            diseases: {},
            url: null
        }
    },
    methods: {
        getDiseases() {
            axios.get('/api/disease/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
                .then((response) => {
                    this.diseases = response.data
                    for (let i = 0; i < this.diseases.length; i++) {
                        const storage = getStorage();
                        let url = this.diseases[i].url
                        getDownloadURL(ref(storage, 'images/' + url))
                            .then((response) => {
                                this.diseases[i].url = response
                            })
                            .catch((err) => {
                                console.log(err)
                            })
                    }
                })
                .catch((error) => {
                    console.log(error)
                })
        },
        deleteDisease(id) {
            axios.delete(`/api/disease/${id}`, {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
            .then((response) => {
                this.getDiseases()
            })
            .catch((error) => {
                console.log(error)
            })
        },
    },
    created() {
        this.getDiseases()
    }
}
</script>