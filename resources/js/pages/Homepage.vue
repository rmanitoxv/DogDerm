<template>
    <div class="relative overflow-hidden bg-white">

        <main class="mx-auto mt-10 max-w-7xl px-4 py-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
            
            <!-- HOME TOP -->
            <div class="sm:text-center lg:text-left">
                <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl md:text-6xl">
                    <!-- HEADER -->
                    <span class="block xl:inline">Welcome to</span>
                    <br>
                    <div class="flex">
                        <span class="block xl:inline text-first barlow">Dog</span>
                        <span class="block xl:inline text-second barlow">Derma</span>
                    </div>
                </h1>
                <p class="mt-4 text-base text-gray-500 sm:mx-auto sm:mt-5 sm:max-w-xl sm:text-lg md:mt-5 md:text-xl lg:mx-0">
                    Want to know what skin disease your dog might have? Use the app today to see the results!</p>

                <div class="mb-15 mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
                    <div class="mt-0 sm:mt-0 sm:ml-3">
                        <router-link to="/register" class="nav__link py-3 px-5 rounded-3xl text-white button-color">
                            <span>Get Started</span>
                        </router-link>
                    </div>
                </div>
            </div>

             <!-- <div class="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
                <img class="h-56 w-full sm:h-72 md:h-96 lg:h-full lg:w-full" src="/images/home-dog.svg" alt="">
            </div> -->

            <!-- SECTION - FEATURES PART -->
            <section class="mt-24 my-24 mb-20 text-gray-700">
                <div class="text-center mb-10 md:max-w-xl lg:max-w-3xl mx-auto">
                    <p class="amiko font-thin text-1xl text-first tracking-widest" id="features">FEATURES</p>
                    <h3 class="text-3xl font-bold mb-6 text-gray-800">What our web-mobile <br> app does</h3>
                </div>

                <div class="grid mt-5 md:grid-cols-3 gap-6 text-center">

                    <!-- FEATURES - VETERINARY CLINICS -->
                    <div>
                        <div class="block rounded-lg shadow-lg bg-white">
                            <div class="overflow-hidden rounded-t-lg h-28"></div>
                            <div class="w-24 -mt-12 overflow-hidden rounded-full mx-auto bg-white">
                                <img src="/images/detect-diseases-icon.svg" />
                            </div>
                            <div class="p-6">
                                <h4 class="text-2xl font-semibold mb-4">Detect Diseases</h4>
                                <p class="my-8 h-28">
                                    Identify your dog’s skin disease using image processing.
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- FEATURES - VETERINARY CLINICS -->
                    <div>
                        <div class="block rounded-lg shadow-lg bg-white">
                            <div class="overflow-hidden rounded-t-lg h-28"></div>
                            <div class="w-24 -mt-12 overflow-hidden rounded-full mx-auto bg-white">
                                <img src="/images/clinic-icon.svg" />
                            </div>
                            <div class="p-6">
                                <h4 class="text-2xl font-semibold mb-4">Veterinary Clinics</h4>
                                <p class="my-8 h-28">
                                    Get referred to a veterinary clinic for dog dermatology near you.
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- FEATURES - INSTANT RESULTS -->
                    <div>
                        <div class="block rounded-lg shadow-lg bg-white">
                            <div class="overflow-hidden rounded-t-lg h-28"></div>
                            <div class="w-24 -mt-12 overflow-hidden rounded-full mx-auto bg-white">
                                <img src="/images/instant-results-icon.svg" />
                            </div>
                            <div class="p-6">
                                <h4 class="text-2xl font-semibold mb-4">Instant Results</h4>
                                <p class="my-8 h-28">
                                    Receive  results, treatments and prevention.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- SECTION - FAQS ACCORDION -->
            <section class="mt-24 my-24 mb-20 text-gray-700">
                <div class="text-center mb-10 md:max-w-xl lg:max-w-3xl mx-auto">
                    <p class="amiko font-thin text-1xl text-first tracking-widest" id="faqs">FREQUENTLY ASKED QUESTIONS</p>
                    <h3 class="text-3xl font-bold mb-6 text-gray-800">Got a question? <br> We have answers!</h3>
                </div>

                <div class="accordion accordion-flush shadow-lg" id="accordionFlushExample">
                    <div class="accordion-item border-t-0 border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                        <!-- QUESTION HEADING -->
                        <h2 class="accordion-header mb-0" id="flush-headingOne">
                        <button class="accordion-button relative flex items-center w-full
                        py-4 px-5 bg-white border-0 rounded-none transition
                        text-base text-gray-800 text-left
                        focus:outline-none" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
                            aria-expanded="false" aria-controls="flush-collapseOne">
                            Frequently asked question?
                        </button>
                        </h2>

                        <!-- FREQUENTLY ASKED QUESTION ITEM -->
                        <div id="flush-collapseOne" class="accordion-collapse border-0 collapse show"
                        aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body py-4 px-5">
                                Placeholder content for this accordion.
                                This is the first item's accordion body.
                            </div>
                        </div>
                    </div>

                    <div class="accordion-item border-t-0 border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                        <!-- QUESTION HEADING -->
                        <h2 class="accordion-header mb-0" id="flush-headingTwo">
                        <button class="accordion-button relative flex items-center w-full
                        py-4 px-5 bg-white border-0 rounded-none transition
                        text-base text-gray-800 text-left
                        focus:outline-none" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
                            aria-expanded="false" aria-controls="flush-collapseTwo">
                            Frequently asked question?
                        </button>
                        </h2>

                        <!-- FREQUENTLY ASKED QUESTION ITEM -->
                        <div id="flush-collapseTwo" class="accordion-collapse border-0 collapse show"
                        aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body py-4 px-5">
                                Placeholder content for this accordion.
                                This is the first item's accordion body.
                            </div>
                        </div>
                    </div>

                    <div class="accordion-item border-t-0 border-l-0 border-r-0 rounded-none bg-white border border-gray-200">
                        <!-- QUESTION HEADING -->
                        <h2 class="accordion-header mb-0" id="flush-headingThree">
                        <button class="accordion-button relative flex items-center w-full
                        py-4 px-5 bg-white border-0 rounded-none transition
                        text-base text-gray-800 text-left
                        focus:outline-none" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
                            aria-expanded="false" aria-controls="flush-collapseThree">
                            Frequently asked question?
                        </button>
                        </h2>

                        <!-- FREQUENTLY ASKED QUESTION ITEM -->
                        <div id="flush-collapseThree" class="accordion-collapse border-0 collapse show"
                        aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body py-4 px-5">
                                Placeholder content for this accordion.
                                This is the first item's accordion body.
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- SLIDER -->

            <!-- ACCORDION -->
        </main>

        
    </div>
</template>

<script>
export default {

}
</script>
