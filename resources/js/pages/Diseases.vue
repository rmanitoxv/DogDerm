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
                <router-link to="/"><img class="object-contain rounded-t-lg" :src="item.url" alt="" />
                </router-link>
                <!-- ARTICLE INFO CONTAINER -->
                <div class="p-4">
                    <router-link to="/"><label class="amiko font-bold text-2xl cursor-pointer">{{item.disease}}</label>
                    </router-link>
                    <p class="poppins text-sm mb-3 text-sixth">
                        {{item.overview}}
                    </p>
                    <router-link to="/"><button
                            class="poppins font-semibold text-sm bg-first hover:bg-second rounded-full py-2 px-3 hover:text-second text-white">Read
                            More <i class='bx bx-right-arrow-alt align-middle'></i></button></router-link>
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