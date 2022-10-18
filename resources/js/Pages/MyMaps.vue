<template>
    <div>
      <gmap-map
        :center="center"
        :zoom="zoom"
        v-if="feedLoaded"
        ref="map"
        :options="options"
      >
        <gmap-marker
          :draggable="true"
          :key="index"
          v-for="(m, index) in locations"
          :position="{
            lat: parseFloat(m.acf.place_latitude),
            lng: parseFloat(m.acf.place_longitude)
          }"
        ></gmap-marker>
      </gmap-map>
    </div>
  </template>
  
  <script>
  
  export default {
    props: {
      centerRef: {
        type: Object,
        default: function() {
          return { lat: -20.646378400026226, lng: 116.80669825605469 };
        }
      },
      zoomVal: {
        type: Number,
        default: function() {
          return 7;
        }
      }
    },
    data() {
      return {
        feedLoaded: false,
        zoom: this.zoomVal,
        center: this.centerRef,
        options: {
          mapTypeControl: false,
          streetViewControl: false
        },
        mapTypeId: "styledMapType",
        locations: []
      };
    },
  
    created: function() {
      this.getData();
    },
    mounted() {
      console.log(this.locations);
    },
    methods: {
      toggleInfoWindow() {},
      getData() {
        const url =
          "https://gist.githubusercontent.com/vgrem/1bab3ded8f8a6d2012e1357ec263c45a/raw/a3c9b6d561759d026d7f4390d730c8971d7a8539/locations.json";
        axios
          .get(url)
          .then(response => {
            this.locations = response.data;
            this.feedLoaded = true;
          })
          .catch(error => {
            console.log(error);
          });
      }
    }
  };
  </script>
  
  <style>
  .vue-map-container {
    height: 640px;
  }
  </style>
  