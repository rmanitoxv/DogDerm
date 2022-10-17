<template>
    <div class="flex flex-col mt-[6.25rem]">
        <div class="left-10 top-6 absolute flex align-items-center">
            <button @click="sidebarFunction">
                <img src="images/list.svg" width="24" class="mr-3" />
            </button>
            <span class="text-2xl text-first barlow">Dog</span>
            <span class="text-2xl text-second barlow">Derma</span>
        </div>
        <div class="flex justify-center ">
            <div class="shadow-2xl rounded-xl mx-[2.5rem] w-full">
                <div class="m-[1.25rem]">
                    <p class="text-first text-[2rem] font-medium">
                        6
                    </p>
                    <p class="font-medium">
                        Skin Diseases
                    </p>
                </div>
            </div>
            <div class="shadow-2xl rounded-xl w-full">
                <div class="m-[1.25rem]">
                    <p class="text-first text-[2rem] font-medium">
                        12
                    </p>
                    <p class="font-medium">
                        Clinics
                    </p>
                </div>
            </div>
            <div class="shadow-2xl rounded-xl mx-[2.5rem] w-full">
                <div class="m-[1.25rem]">
                    <p class="text-first text-[2rem] font-medium">
                        18
                    </p>
                    <p class="font-medium">
                        Users
                    </p>
                </div>
            </div>
        </div>
        <div class="mt-[3.5rem] mx-[2.5rem]">
            <div class="amiko font-bold text-[2rem]">
                Diseases
            </div>
            <div class="flex flex-col shadow-md rounded-xl w-full justify-center">
                <div class="flex h-[3rem] align-items-center">
                    <div class="font-medium w-full">&nbsp;</div>
                    <div class="font-medium w-full">&nbsp;</div>
                    <div class="font-medium w-full">Disease</div>
                    <div class="font-medium w-full">Overview</div>
                    <div class="font-medium w-full">Causes</div>
                    <div class="font-medium w-full">Treatment</div>
                    <div class="font-medium w-full">Prevention</div>
                    <div class="font-medium w-full">&nbsp;</div>
                </div>
                <div class="h-[60vh] overflow-auto">
                    <div v-for="index in 10" :key="index">
                        <label v-bind:for="index" class="w-full">
                            <div class="flex h-[4.5rem] align-items-center text-sixth">
                                <div class="font-medium w-full text-center">
                                    <input type="checkbox" v-bind:id="index" />
                                </div>
                                <div class="font-medium w-full">
                                    <img src="/images/circle.svg" />
                                </div>
                                <div class="font-medium w-full">Sarcoptic Mange</div>
                                <div class="font-medium w-full">Lorem ipsum dolor...</div>
                                <div class="font-medium w-full">Lorem ipsum dolor...</div>
                                <div class="font-medium w-full">Lorem ipsum dolor...</div>
                                <div class="font-medium w-full">Lorem ipsum dolor...</div>
                                <div class="font-medium w-full text-white">
                                    <button class="bg-blue w-[2.25rem] h-[2.25rem] rounded-xl mx-[0.25rem] ">
                                        <i class='bx bx-edit text-base'></i>
                                    </button>
                                    <button class="bg-red w-[2.25rem] h-[2.25rem] rounded-xl mx-[0.25rem]">
                                        <i class='bx bx-trash-alt' ></i>
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
export default {
    props: {
        sidebarFunction: Function
    },
    data() {
    },
    methods: {
    }
}
</script>