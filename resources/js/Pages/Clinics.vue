<template>

    <div class="container mb-12 flex flex-col">
        <!-- FIND NEARBY VETERINARY CLINICS -->
        <div class="my-5">
            <p class="amiko font-thin text-first text-sm tracking-widest">FIND NEARBY</p>
            <p class="amiko font-bold text-2xl">Veterinary Clinics</p>
        </div>
        
        <div class="mt-10 sm:mt-0">
            <div class="md:grid md:grid-cols-3 md:gap-6">

                <!-- ================ CURRENT LOCATION ================ -->
                <div class="mt-5 md:col-span-2 md:mt-0">

                    <!-- ================ START OF FORMS ================ -->
                    <form action="#" method="POST">

                        <div class="overflow-hidden shadow sm:rounded-md">

                            <div class="bg-white px-4 py-5 sm:p-6">
                                <div class="grid grid-cols-6 gap-6">
                                    
                                    <!-- ================ COORDINATES ================ -->
                                    <div class="col-span-6">
                                        <label for="coordinates" class="block text-sm font-medium text-gray-700">Location Coordinates</label>
                                        <input type="text" name="coordinates" id="coordinates" autocomplete="coordinates" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                                    </div>
                                    
                                    <!-- ================ VETERINARY CLINIC OPTIONS ================ -->
                                    <div class="col-span-6 sm:col-span-3">
                                        <label for="services" class="block text-sm font-medium text-gray-700">Veterinary Service</label>
                                        <select v-model="type" id="services" name="services" autocomplete="services" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                                            <option>Veterinary Clinic</option>
                                            <option>Animal Dermatology</option>
                                            <option>Animal Hospital</option>
                                        </select>
                                    </div>
                                    
                                    <!-- ================ DISTANCE ================ -->
                                    <div class="col-span-6 sm:col-span-3">
                                        <label for="last-name" class="block text-sm font-medium text-gray-700">Distance</label>
                                        <select id="distance" name="distance" autocomplete="distance-name" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                                            <option>1 KM</option>
                                            <option>2 KM</option>
                                            <option>5 KM</option>
                                            <option>10 KM</option>
                                            <option>15 KM</option>
                                        </select>
                                    </div>

                                    <!-- ================ FIND CLINIC BUTTON ================ -->
                                    <div class="col-span-6 sm:col-span-3">
                                        <button class="bg-yellow rounded-2xl py-2.5 px-5 text-white button-color font-semibold">Find Clinic</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- ================ END OF FORMS ================ -->
                </div>
                <!-- ================ END OF CURRENT LOCATION ================ -->


            </div>
            <div class="md:grid md:grid-cols-3 md:gap-6 absolute">
                <div class="mapouter">
                        <!-- syempre sample lang i2 -->
                        <div class="gmap_canvas"><iframe class="gmap_iframe" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
                            src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=intramuros&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
                            style=".mapouter{position:relative;text-align:right;width:400px;height:500px;}.gmap_canvas {overflow:hidden;background:none!important;width:400px;height:500px;}.gmap_iframe {height:400px!important;}"
                            ></iframe>
                        </div>
                </div>
            </div>
        </div>
    </div>

    

    <div class="container mx-auto mb-40">
        <!-- POPULAR CLINICS -->
        <!-- NEED CRUD HERE -->
        <div class="my-3">
            <p class="amiko font-thin text-first text-sm tracking-widest">POPULAR</p>
            <p class="amiko font-bold text-2xl">Veterinary Clinics</p>
        </div>

        <!-- VET INFORMATION -->
        <div class="container rounded-lg bg-white my-4 mx-0 drop-shadow-lg flex items-center">
            <!-- IMG -->
            <div class="flex-initial w-45 py-3 px-1">
                <img class="object-cover rounded-lg h-40" src="/images/placeholder.svg">
            </div>
            <!-- DETAILS -->
            <div class="flex-initial w-45 py-3 pl-5 inline-block">
                <p class="amiko font-bold text-lg">ManilaVets Animal Clinic</p>
                <ul>
                    <li class="poppins text-sm"><i class='bx bx-location-plus fill-yellow '></i> 1234 Lorem ipsum Example Street, City</li>
                    <li class="poppins text-sm"><i class='bx bxs-phone-call fill-yellow'></i> 912 345 678</li>
                    <li class="poppins text-sm"><i class='bx bx-envelope fill-yellow'></i>juandelacruz@gmail.com</li>
                </ul>
            </div>
        </div>

        <!-- VET INFORMATION -->
        <div class="container rounded-lg bg-white my-4 mx-0 drop-shadow-lg flex items-center">
            <!-- IMG -->
            <div class="flex-initial w-45 py-3 px-1">
                <img class="object-cover rounded-lg h-40" src="/images/placeholder.svg">
            </div>
            <!-- DETAILS -->
            <div class="flex-initial w-45 py-3 pl-5 inline-block">
                <p class="amiko font-bold text-lg">ManilaVets Animal Clinic</p>
                <ul>
                    <li class="poppins text-sm">1234 Lorem ipsum Example Street, City</li>
                    <li class="poppins text-sm">912 345 678</li>
                    <li class="poppins text-sm">juandelacruz@gmail.com</li>
                </ul>
            </div>
        </div>

    </div>



        <!-- component -->
        <div class="flex flex-col">
            <div class="mt-4 grid grid-cols-1 gap-4 md:grid-cols-2 lg:grid-cols-2 xl:grid-cols-2">
                <!-- ================ CURRENT LOCATION ================ -->
                <div class="flex items-start rounded-xl bg-white p-4 shadow-md">
                        <!-- ================ START OF FORMS ================ -->
                        <form action="#" method="POST">

                            <div class="overflow-hidden sm:rounded-md">

                                <div class="bg-white px-4 py-5 sm:p-6">
                                    
                                    <!-- ================ COORDINATES ================ -->
                                    <div class="col-span-6">
                                        <label for="coordinates" class="block text-sm font-medium text-gray-700">Location Coordinates</label>
                                        <input type="text" name="coordinates" id="coordinates" autocomplete="coordinates" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                                    </div>
                                    
                                    <!-- ================ VETERINARY CLINIC OPTIONS ================ -->
                                    <div class="col-span-6 sm:col-span-3">
                                        <label for="services" class="block text-sm font-medium text-gray-700">Veterinary Service</label>
                                        <select v-model="type" id="services" name="services" autocomplete="services" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                                            <option>Veterinary Clinic</option>
                                            <option>Animal Dermatology</option>
                                            <option>Animal Hospital</option>
                                        </select>
                                    </div>
                                    
                                    <!-- ================ DISTANCE ================ -->
                                    <div class="col-span-6 sm:col-span-3">
                                        <label for="last-name" class="block text-sm font-medium text-gray-700">Distance</label>
                                        <select id="distance" name="distance" autocomplete="distance-name" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                                            <option>1 KM</option>
                                            <option>2 KM</option>
                                            <option>5 KM</option>
                                            <option>10 KM</option>
                                            <option>15 KM</option>
                                        </select>
                                    </div>

                                    <!-- ================ FIND CLINIC BUTTON ================ -->
                                    <div class="col-span-6 sm:col-span-3">
                                        <button class="bg-yellow rounded-2xl py-2.5 px-5 text-white button-color font-semibold">Find Clinic</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- ================ END OF FORMS ================ -->
                    </div>
                <!-- ================ END OF CURRENT LOCATION ================ -->

                <div class="flex items-start rounded-xl bg-white p-4 shadow-md">
                    <div class="mapouter">
                        <!-- syempre sample lang i2 -->
                        <div class="gmap_canvas"><iframe class="gmap_iframe" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
                            src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=intramuros&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
                            style=".mapouter{position:relative;text-align:right;width:400px;height:500px;}.gmap_canvas {overflow:hidden;background:none!important;width:400px;height:500px;}.gmap_iframe {height:400px!important;}"
                            ></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</template>

<script setup>
// export default {
//     data() {
//         return {
//             type: "",
//             radius: ""
//         };
//     },
//     methods: {
//         locatorButtonPressed
//     }
// }

</script>