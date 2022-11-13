<template>
    <div class="container my-20 mx-auto" id="app">
        <!-- MAIN TITLE -->
        <div class="my-3">
            <p class="amiko font-thin text-first text-sm tracking-widest">LEARN MORE ABOUT</p>
            <p class="amiko font-bold text-2xl">Dog Skin Disease</p>
        </div>

        <div class="grid md:grid-cols-3 gap-7 grid-cols-2">
            <!-- INDIV ARTICLE CONTAINER -->
            <div v-for="item in datas" class="rounded-xl bg-white drop-shadow-lg">
                <!-- IMAGE -->
                <button 
                    @click="$router.push({ name: 'IndivDisease', params: { id: item.id } })">
                    <img class="object-cover rounded-t-lg w-96 h-60" :src="item.url" alt="" />
                </button>
                <!-- ARTICLE INFO CONTAINER -->
                <div class="p-4">
                    <button 
                        @click="$router.push({ name: 'IndivDisease', params: { id: item.id } })" class="text-start">
                        {{item.disease}}
                    </button>
                    <p class="poppins text-sm mb-3 text-sixth">
                        {{item.overview}}
                    </p>
                    <button 
                        @click="$router.push({ name: 'IndivDisease', params: { id: item.id } })" class="poppins font-semibold text-sm bg-first hover:bg-second rounded-full py-2 px-3 hover:text-second text-white w-40">Read
                            More <i class='bx bx-right-arrow-alt align-middle'></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { getStorage, ref, uploadBytesResumable, getDownloadURL } from "firebase/storage";
export default {
    data() {
        return {
            datas: {}
        }
    },
    methods: {
        getDatas() {
            axios.get('/api/disease/')
            .then((response) => {
                this.datas = response.data
                for (let i=0; i < this.datas.length; i++){
                    const storage = getStorage();
                    const storageRef = ref(storage, 'images/' + this.datas[i].url);
                    getDownloadURL(storageRef)
                        .then((url) => {
                            this.datas[i].url = url
                        })
                }
            })
            .catch((error) => {
                console.log(error)
            })
        }
    },
    created(){
        this.getDatas()
    }
}
</script>