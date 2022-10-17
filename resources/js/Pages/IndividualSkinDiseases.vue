<script setup>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
        } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    });
}
</script>

<template>
    <div class="main-container" id="app">
        <div class="content-container">
            <div class="container clearfix">
                <!-- ONPAGE LINKS SIDEBAR -->
                <!-- <vue-sticky-sidebar
                containerSelector=".container"
                rootClass="sidebar"
                innerWrapperSelector=".sidebar__inner"
                >
                    <label class="on-this-page">On this page</label>
                    <ul class="onpage-links">
                        <li><a href="#overview">Overview</a> |</li>
                        <li><a href="#pictures">Pictures</a> |</li>
                        <li><a href="#causes-symptoms">Causes and Symptoms</a> |</li>
                        <li><a href="#management-treatment">Management and Treatment</a> |</li>
                        <li><a href="#prevention">Prevention</a></li>
                    </ul>
                </vue-sticky-sidebar> -->

                <!-- MAIN CONTENT -->
                <div id="content">
                    <!-- DISEASE DESCRIPTION -->
                    <h2 class="disease-title">Disease Title</h2>
                    <div class="desc-container">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                        consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur
                        pellentesque, metus ipsum interdum sapien, quis ornare quam enim vel ipsum.
                    </div>

                    <!-- ON THIS PAGE LINKS -->
                    <label class="on-this-page">On this page</label>
                    <ul class="onpage-links">
                        <li><a href="#pictures">Pictures</a> | </li>
                        <li><a href="#overview">Overview</a> | </li>
                        <li><a href="#causes-symptoms">Causes and Symptoms</a> | </li>
                        <li><a href="#management-treatment">Management and Treatment</a> | </li>
                        <li><a href="#prevention">Prevention</a></li>
                    </ul>

                    <!-- PICTURES -->
                    <div class="pictures-container" id="pictures">
                        <p class="warning">*Warning: graphic images ahead.</p>
                        <button class="accordion">Pictures</button>
                        <div class="panel">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                    </div>

                    <!-- OVERVIEW -->
                    <h3 class="disease-subtitles" id="overview">OVERVIEW</h3>
                    <div class="desc-container">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                        consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur
                        pellentesque, metus ipsum interdum sapien, quis ornare quam enim vel ipsum.
                    </div>

                    <!-- CAUSES AND SYMPTOMS -->
                    <h3 class="disease-subtitles" id="causes-symptoms">CAUSES AND SYMPTOMS</h3>
                    <!-- causes -->
                    <label class="gray-subtitles">Causes</label>
                    <div class="desc-container">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                        consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur
                        pellentesque, metus ipsum interdum sapien, quis ornare quam enim vel ipsum.
                    </div>

                    <!-- symptoms -->
                    <label class="gray-subtitles">Symptoms</label>
                    <div class="desc-container">
                        Example list:
                        <ul>
                            <li>Example</li>
                            <li>Example</li>
                            <li>Example</li>
                        </ul>
                    </div>

                    <!-- MANAGEMENT AND TREATMENT -->
                    <h3 class="disease-subtitles" id="management-treatment">MANAGEMENT AND TREATMENT</h3>
                    <div class="desc-container">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                        consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur
                        pellentesque, metus ipsum interdum sapien, quis ornare quam enim vel ipsum.
                    </div>

                    <!-- PREVENTION -->
                    <h3 class="disease-subtitles" id="prevention">PREVENTION</h3>
                    <div class="desc-container">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus id leo et aliquam. Proin
                        consectetur ligula vel neque cursus laoreet. Nullam dignissim, augue at consectetur
                        pellentesque, metus ipsum interdum sapien, quis ornare quam enim vel ipsum.
                    </div>

                </div>
            </div>
        </div>
    </div>
</template>
