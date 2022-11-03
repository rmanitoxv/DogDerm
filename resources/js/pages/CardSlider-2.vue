<template>
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img
            class="object-cover w-full h-96"
            src="https://source.unsplash.com/user/erondu/3000x900"
            alt="apple watch photo"
          />
        </div>
        <div class="swiper-slide">
          <img
            class="object-cover w-full h-96"
            src="https://source.unsplash.com/collection/190727/3000x900"
            alt="apple watch photo"
          />
        </div>
        <div class="swiper-slide">
          <img
            class="object-cover w-full h-96"
            src="https://source.unsplash.com/collection/190728/3000x900"
            alt="apple watch photo"
          />
        </div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
</template>

<script>

export default {

    data() {
        return {
            lat: 0,
            lng: 0,
            
        };
    },

    mounted() {
        const externalScript = document.createElement('script')
        externalScript.setAttribute('src', 'https://unpkg.com/swiper/swiper-bundle.min.js')
        document.head.appendChild(externalScript)
    },

    methods: {

        var swiper = new Swiper('.mySwiper', {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    }
}
</script>