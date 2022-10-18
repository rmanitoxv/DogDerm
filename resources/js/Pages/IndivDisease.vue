<template>
    <div class="container flex gap-8 mx-auto mt-20 md:px-20">
        <!-- STICKY SIDEBAR -->
        <aside class="hidden md:block flex-initial w-30 h-screen sticky top-0">
            <!-- ON THIS PAGE LINKS -->
            <label class="amiko text-first font-semibold text-lg">On this page</label>
            <ul class="text-base underline-offset-4">
                <li><a href="#pictures"><i class='bx bx-chevron-right'></i>Pictures</a></li>
                <li><a href="#overview"><i class='bx bx-chevron-right'></i>Overview</a></li>
                <li><a href="#causes-symptoms"><i class='bx bx-chevron-right'></i>Causes and Symptoms</a></li>
                <li><a href="#management-treatment"><i class='bx bx-chevron-right'></i>Management and Treatment</a></li>
                <li><a href="#prevention"><i class='bx bx-chevron-right'></i>Prevention</a></li>
            </ul>
        </aside>

        <!-- MAIN CONTENT -->
        <main class="flex-initial w-70">
            <div class="container rounded-xl bg-white md:drop-shadow-lg md:py-20 md:px-12 mx-0">
                <!-- DISEASE DESCRIPTION -->
                <h2 class="amiko text-second font-bold text-5xl mb-6">Disease Title</h2>
                <div class="desc-container">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                    consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur pellentesque, metus
                    ipsum interdum sapien, quis ornare quam enim vel ipsum.
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
                        data-bs-parent="#accordionExample">
                            <div class="accordion-body py-4 px-5">
                                <div class="grid md:grid-cols-3 grid-cols-2 gap-3">
                                    <!-- IMG -->
                                    <div><img class="object-cover h-30 w-30" src="/images/placeholder.svg"></div>
                                    <div><img class="object-cover h-30 w-30" src="/images/placeholder.svg"></div>
                                    <div><img class="object-cover h-30 w-30" src="/images/placeholder.svg"></div>
                                    <div><img class="object-cover h-30 w-30" src="/images/placeholder.svg"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- OVERVIEW -->
                <h3 class="amiko text-blue font-bold text-2xl mt-4 mb-2" id="overview">OVERVIEW</h3>
                <div class="desc-container">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                    consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur pellentesque, metus
                    ipsum interdum sapien, quis ornare quam enim vel ipsum.
                </div>

                <!-- CAUSES AND SYMPTOMS -->
                <h3 class="amiko text-blue font-bold text-2xl my-2" id="causes-symptoms">CAUSES AND SYMPTOMS</h3>
                <!-- causes -->
                <label class="amiko text-third font-semibold text-lg my-2">Causes</label>
                <div class="desc-container">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                    consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur pellentesque, metus
                    ipsum interdum sapien, quis ornare quam enim vel ipsum.
                </div>

                <!-- symptoms -->
                <label class="amiko text-third font-semibold text-lg my-2">Symptoms</label>
                <div class="desc-container">
                    Example list:
                    <ul>
                        <li>Example</li>
                        <li>Example</li>
                        <li>Example</li>
                    </ul>
                </div>

                <!-- MANAGEMENT AND TREATMENT -->
                <h3 class="amiko text-blue font-bold text-2xl my-2" id="management-treatment">MANAGEMENT AND TREATMENT</h3>
                <div class="desc-container">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                    consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur pellentesque, metus
                    ipsum interdum sapien, quis ornare quam enim vel ipsum.
                </div>

                <!-- PREVENTION -->
                <h3 class="amiko text-blue font-bold text-2xl my-2" id="prevention">PREVENTION</h3>
                <div class="desc-container">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                    consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur pellentesque, metus
                    ipsum interdum sapien, quis ornare quam enim vel ipsum.
                </div>
            </div>
        </main>
    </div>
</template>
