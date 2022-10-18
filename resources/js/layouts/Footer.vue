<template>
    <footer class="pt-20 mx-9 text-center lg:text-left bg-gray-100 text-gray-600">
    
        <div class="mx-6 py-10 justify-content-center text-center md:text-left">
            <div class="grid grid-1 md:grid-cols-2 lg:grid-cols-4 gap-1">
                <!-- DOG DERMA HEADING TITLE -->
                <div class="">
                    <h6 class="uppercase font-semibold mb-4 flex items-center justify-center md:justify-start">
                    <i class='bx bxs-dog'></i> &nbsp;
                    DogDerma
                    </h6>
                        <!-- EMAIL -->
                        <p class="flex items-center justify-center md:justify-start mb-4">

                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="envelope"
                                class="w-4 mr-4" role="img" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 512 512">
                                <path fill="currentColor"
                                d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z">
                                </path>
                            </svg>

                            dogderma2022@gmail.com
                        </p>

                        <!-- PHONE NUMBER -->
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="phone"
                                class="w-4 mr-4" role="img" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 512 512">
                                <path fill="currentColor"
                                d="M493.4 24.6l-104-24c-11.3-2.6-22.9 3.3-27.5 13.9l-48 112c-4.2 9.8-1.4 21.3 6.9 28l60.6 49.6c-36 76.7-98.9 140.5-177.2 177.2l-49.6-60.6c-6.8-8.3-18.2-11.1-28-6.9l-112 48C3.9 366.5-2 378.1.6 389.4l24 104C27.1 504.2 36.7 512 48 512c256.1 0 464-207.5 464-464 0-11.2-7.7-20.9-18.6-23.4z">
                                </path>
                            </svg>

                            + 0920 166 2517
                        </p>
                </div>

                <!-- HOME HEADING TITLE -->
                <div class="">
                    <!-- HEADING TITLE -->
                    <h6 class="uppercase font-semibold mb-4 flex justify-center md:justify-start">
                    Home
                    </h6>
                    <!-- START OF FOOTER LINKS -->

                    <!-- ABOUT US -->
                    <router-link to="#about"> 
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            About Us
                        </p>
                    </router-link>

                    <!-- FEATURES -->
                    <router-link to="#features"> 
                        <p class="text-gray-900 flex items-center justify-center md:justify-start mb-4">
                            Features
                        </p>
                    </router-link>
                    
                </div>

                <!-- DISEASES HEADING TITLE -->
                <div class="">
                    <!-- HEADING TITLE -->
                    <h6 class="uppercase font-semibold mb-4 flex justify-center md:justify-start">
                    Diseases
                    </h6>
                    <!-- START OF FOOTER LINKS -->

                    <!-- CAUSES -->
                    <router-link to="#"> 
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            Causes
                        </p>
                    </router-link>
                    
                    <!-- TREATMENT -->
                    <router-link to="#"> 
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            Treatment
                        </p>
                    </router-link>

                    <!-- PREVENTION -->
                    <router-link to="#"> 
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            Prevention
                        </p>
                    </router-link>
                    
                </div>

                <!-- CLINICS HEADING TITLE -->
                <div class="">
                    <!-- HEADING TITLE -->
                    <h6 class="uppercase font-semibold mb-4 flex justify-center md:justify-start">
                    Clinics
                    </h6>
                    <!-- START OF FOOTER LINKS -->

                    <!-- LOCATIONS -->
                    <router-link to="/clinics"> 
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            Locations
                        </p>
                    </router-link>

                    <!-- CLINIC INFORMATION -->
                    <router-link to="/clinics"> 
                        <p class="flex items-center justify-center md:justify-start mb-4">
                            Clinic Information
                        </p>
                    </router-link>
                    
                </div>
            </div>
        </div>

        <!-- BOTTOM COPYRIGHT -->
        <div class="text-center p-6 bg-gray-200">
            <span>© 2022 Copyright DogDerma</span>
        </div>
    </footer>
</template>
    