<template>
    <div class="container flex gap-8 mx-auto mt-20 md:px-20">
        <!-- STICKY SIDEBAR -->
        <aside class="top-25 left-96 self-start w-40 hidden md:block flex-initial">
            <!-- ON THIS PAGE LINKS -->
            <label class="amiko text-first font-semibold text-xl">On this page</label>
            <ul class="text-base underline-offset-4">
                <li><a href="#overview"><i class='bx bx-chevron-right'></i>Overview</a></li>
                <li><a href="#pictures"><i class='bx bx-chevron-right'></i>Pictures</a></li>
                <li><a href="#causes-symptoms"><i class='bx bx-chevron-right'></i>Symptoms</a></li>
                <li><a href="#management-treatment"><i class='bx bx-chevron-right'></i>Treatment</a></li>
                <li><a href="#prevention"><i class='bx bx-chevron-right'></i>Prevention</a></li>
            </ul>
        </aside>

        <!-- MAIN CONTENT -->
        <main class="flex-initial w-full">
            <div class="container rounded-xl bg-white md:drop-shadow-lg md:py-20 md:px-12 mx-0">
                <!-- DISEASE DESCRIPTION -->
                <h2 class="amiko text-second font-bold text-5xl mb-6" id="overview">{{ datas.disease }}</h2>
                <div class="desc-container">
                    {{ datas.overview }}
                </div>

                <!-- PICTURES -->
                <div class="pictures-container" id="pictures">
                    <p class="text-first text-sm my-2">*Warning: graphic images ahead.</p>

                    <!-- <button class="accordion">Pictures</button>
                    <div class="panel">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div> -->

                </div>
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item bg-white border border-gray-200 rounded-full">
                        <h2 class="accordion-header mb-0" id="headingOne">
                            <button class="
                            accordion-button
                            collapsed
                            relative
                            flex
                            items-center
                            w-full
                            py-4
                            px-5
                            text-base text-gray-800 text-left
                            bg-white
                            border-0
                            rounded-none
                            transition
                        " type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                                aria-controls="collapseOne">
                                Pictures
                            </button>
                        </h2>
                        <!-- ACCORDION -->
                        <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                            data-bs-parent="#accordionExample" style="visibility: unset">
                            <div class="accordion-body py-4 px-5">
                                <div class="grid md:grid-cols-3 grid-cols-2 gap-3">
                                    <!-- IMG -->
                                    <div><img class="object-cover h-30 w-30" :src="datas.url"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- CAUSES AND SYMPTOMS -->
                <h3 class="amiko text-blue font-bold text-2xl mt-4 mb-2" id="causes-symptoms"><i
                        class='bx bx-search align-middle'></i> CAUSES AND SYMPTOMS</h3>
                <!-- causes -->
                <label class="amiko text-third font-semibold text-lg my-2">Causes</label>
                <div class="desc-container">
                    {{ datas.causes }}
                </div>

                <!-- symptoms -->
                <label class="amiko text-third font-semibold text-lg my-2">Symptoms</label>
                <div class="desc-container">
                    <ul v-for="item in symptoms">
                        <li>&#x2022; {{item}}</li>
                    </ul>
                </div>

                <!-- MANAGEMENT AND TREATMENT -->
                <h3 class="amiko text-blue font-bold text-2xl my-2" id="management-treatment"><i
                        class='bx bx-plus-medical align-middle'></i> MANAGEMENT AND TREATMENT</h3>
                <div class="desc-container">
                    {{ datas.treatment }}
                </div>

                <!-- PREVENTION -->
                <h3 class="amiko text-blue font-bold text-2xl my-2" id="prevention"><i
                        class='bx bxs-hand align-middle'></i> PREVENTION</h3>
                <div class="desc-container">
                    {{ datas.prevention }}
                </div>
            </div>
        </main>
    </div>
</template>
<script>
import parseCookie from '../utils/parseCookie'
import { getStorage, ref, uploadBytesResumable, getDownloadURL } from "firebase/storage";
export default {
    data() {
        return {
            id: this.$route.params.id,
            datas: {},
            symptoms: null
        }
    },
    methods: {
        getData(id) {
            axios.get(`/api/disease/${id}`, {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
                .then((response) => {
                    this.datas = response.data
                    const storage = getStorage();
                    const storageRef = ref(storage, 'images/' + this.datas.url);
                    getDownloadURL(storageRef)
                        .then((url) => {
                            this.datas.url = url
                        })
                    this.symptoms = JSON.parse(this.datas.symptoms)
                })
                .catch((error) => {
                    console.log(error)
                })
        }
    },
    created() {
        this.getData(this.id)
    }
}
</script>