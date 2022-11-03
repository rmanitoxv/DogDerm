<template>
    <div class="flex-col justify-center mt-[10.75rem] text-center">
        <p class="text-[2.5rem] text-second font-semibold"> SKIN DISEASE DETECTION </p>
        <p class="text-[0.875rem] font-medium text-sixth">Results are in!</p>
        <p class="text-4xl font-semibold italic text-first">Ringworms Detected</p>
        <div class="flex mt-14 justify-center">
            <div class="flex w-[24.5rem] h-[24.5rem] bg-seventh rounded-[1.5rem] mr-[6.5rem]">

            </div>
            <div class="w-[24.5rem] h-[24.5rem] bg-seventh rounded-[1.5rem] relative">
                <p class="text-3xl top-4 absolute w-full z-5">Ringworms</p>
                <Swiper :slides-per-view="1" :space-between="50" :modules="[Navigation, Pagination, Virtual, Autoplay]"
                    :navigation="{ nextEl: '.nextArrow', prevEl: '.prevArrow' }" :pagination="{ clickable: true }" autoplay
                    grab-cursor class="object-cover w-[24.5rem] h-[24.5rem]">
                    <div class="navigation">
                        <div class="nav-indicator prevArrow text-3xl cursor-pointer">
                            <i class="bi bi-chevron-left"></i>
                        </div>
                        <div class="nav-indicator nextArrow text-3xl cursor-pointer">
                            <i class="bi bi-chevron-right"></i>
                        </div>
                    </div>
                    <SwiperSlide class="relative">
                        <div class="absolute w-full top-[40%]">
                            <p class="text-6xl mb-1"> 82% </p>
                            <p class="text-grey"> ringworms </p>
                        </div>
                        <div class="flex items-center justify-center h-full text-">
                            <circle-progress :percent="82" :viewport="true" fill-color="#112B3C" empty-color="#ECF1F8"
                                :size="225" />
                        </div>
                    </SwiperSlide>
                    <SwiperSlide>
                        <div class="flex items-center justify-center h-full">
                            <div class="flex flex-col justify-center w-full">
                                <div class="flex mt-1" v-for="item in datas">
                                    <div class="text-end w-[50%] mr-2 text-grey">{{ item.disease }}</div>
                                    <div class="w-[50%] flex items-center">
                                        <div class="text-start bg-grey h-2" :style="{ width: item.result }"> &nbsp; </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </SwiperSlide>
                    <SwiperSlide class="flex flex-col items-center justify-center">
                        <img src="/images/map.svg" class="h-[55%] mb-3"/>
                        <router-link to="/clinics"
                            class="w-auto px-3 text-first border-[.15rem] border-first py-[.35rem] rounded-3xl text-xl mb-[-2rem] transition delay-75 hover:bg-first hover:text-seventh">
                            Locate Nearby Clinics
                        </router-link>
                    </SwiperSlide>
                </Swiper>
            </div>
        </div>
    </div>
</template>
<script setup>
import { Navigation, Pagination, Virtual, Autoplay } from 'swiper'
import { Swiper, SwiperSlide } from 'swiper/vue'
import 'swiper/css';
import 'swiper/css/bundle';
</script>
<script>
import "vue3-circle-progress/dist/circle-progress.css";
import CircleProgress from "vue3-circle-progress";
export default {
    data() {
        return {
            datas: [
                { disease: 'Ringworms', result: '82%' },
                { disease: 'MRSA', result: '70%' },
                { disease: 'Sarcoptic Mange', result: '60%' },
                { disease: 'Flea Infestation', result: '50%' },
                { disease: 'Tick-borne Disease', result: '50%' },
                { disease: 'Harvest Mites', result: '0%' },
                { disease: 'Yeast Infestations', result: '0%' },
                { disease: 'Hotspot', result: '0%' },
                { disease: 'Folliculitis', result: '0%' },
                { disease: 'Carbuncles', result: '0%' }
            ]
        }
    },
    components() {
        { CircleProgress }
    }
}

</script>
<style>
.swiper-button-disabled {
    cursor: default;
    opacity: 0;
}

.navigation {
    z-index: 20;
    display: flex;
    justify-content: space-between;
    position: absolute;
    width: 100%;
    top: 50%;
}

</style>
