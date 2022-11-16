<template>
    <div class="container mx-auto mt-20 mb-40">
        <!-- FIND NEARBY -->
        <div class="my-3">
            <p class="amiko font-thin text-first text-sm tracking-widest">FIND NEARBY</p>
            <p class="amiko font-bold text-2xl">Veterinary Clinics</p>
        </div>

        <div class="grid md:grid-cols-2 gap-2 grid-cols-1 three wide column">
            <form class="ui segment large form m-0" @submit.prevent="findCloseByButtonPressed()">
                <div class="ui segment">
                    <!-- LOCATION COORDINATES -->
                    <div class="field">
                        <div class="ui right icon input large">
                            <input type="text" placeholder="Enter your address" v-model="coordinates" />
                            <i class="dot circle link icon" @click="locatorButtonPressed"></i>
                        </div>
                    </div>

                    <!-- SELECT -->
                    <div class="field">
                        <div class="two fields">
                            <div class="field">
                                <select v-model="type">
                                    <!-- <option value="restaurant">Restaurant</option> -->
                                    <option value="veterinary_care">Veterinary Care</option>
                                </select>
                            </div>

                            <div class="field">
                                <select id="radius">
                                    <option value="5">5 KM</option>
                                    <option value="10">10 KM</option>
                                    <option value="15">15 KM</option>
                                    <option value="20">20 KM</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <button class="ui button fill-yellow font-semibold">Find Clinic</button>
                </div>
                
                <!-- LIST OF PLACES -->
                <div class="ui segment"  style="max-height:500px;overflow:scroll">
                    <div class="ui divided items">
                        <div class="item" v-for="place in places" :key="place.id">
                            <div class="content">
                                <div class="amiko font-bold text-lg">{{place.name}}</div>
                                <div class="meta">{{place.vicinity}}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            
            <div class="ten wide column segment ui m-0" ref="map">
                <!-- <iframe class="gmap_iframe" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
                    src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=intramuros&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
                    style=".mapouter{position:relative;text-align:right;width:600px;height:500px;}.gmap_canvas {overflow:hidden;background:none!important;width:600px;height:500px;}.gmap_iframe {height:400px!important;}"
                    ></iframe> -->
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
        <div v-for="item in clinics">
            <div class="container rounded-lg bg-white my-4 mx-0 drop-shadow-lg flex items-center">
                <!-- IMG -->
                <div class="flex-initial w-45 py-3 px-1">
                    <img class="object-cover rounded-lg w-40 h-40" :src="item.url">
                </div>
                <!-- DETAILS -->
                <div class="flex-initial w-45 py-3 pl-5 inline-block">
                    <p class="amiko font-bold text-lg">{{item.clinic_name}}</p>
                    <ul>
                        <li class="poppins text-sm"><i class='bx bx-location-plus text-first'></i> &nbsp; {{item.clinic_address}}</li>
                        <li class="poppins text-sm"><i class='bx bxs-phone-call text-first'></i> &nbsp; {{item.clinic_mobile}} | {{item.clinic_landline}}</li>
                        <li class="poppins text-sm"><i class='bx bx-envelope text-first'></i> &nbsp; {{item.clinic_email}}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
import parseCookie from '../utils/parseCookie'
import { getStorage, ref, uploadBytesResumable, getDownloadURL } from "firebase/storage";
export default {
    data() {
        return {
            lat: 0,
            lng: 0,
            // type: "restaurant",
            type: "veterinary_care",
            radius: "",
            places: [],
            clinics: {}
        };
    },
    computed: {
        coordinates() {
            return `${this.lat}, ${this.lng}`;
        }
    },
    async mounted() {
        const externalScript = document.createElement('script')
        externalScript.setAttribute('src', 'https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCSvvmwaZ3j0VaHbCE2MJZSKxguQRPcS-o')
        document.head.appendChild(externalScript)
    },
    methods: {
        locatorButtonPressed() {
            navigator.geolocation.getCurrentPosition(
                position => {
                    this.lat = position.coords.latitude;
                    this.lng = position.coords.longitude;
                },
                error => {
                    console.log("Error getting location");
                }
            );
        },

        findCloseByButtonPressed() {
            const URL = `https://cors-anywhere.herokuapp.com/https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${this.lat},${this.lng}&type=${this.type}&radius=${radius.value * 1000}&key=AIzaSyCSvvmwaZ3j0VaHbCE2MJZSKxguQRPcS-o`;

            axios
                .get(URL)
                .then(response => {
                    this.places = response.data.results;
                    this.addLocationsToGoogleMaps();
                    console.log(URL)
                })
                .catch(error => {
                console.log(error);
            });
        },

        addLocationsToGoogleMaps() {
            var map = new google.maps.Map(this.$refs['map'], {
                zoom: 15,
                center: new google.maps.LatLng(this.lat, this.lng),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            var infowindow = new google.maps.InfoWindow();

            this.places.forEach(place => {
                const lat = place.geometry.location.lat;
                const lng = place.geometry.location.lng;

                let marker = new google.maps.Marker({
                    position: new google.maps.LatLng(lat, lng),
                    map: map
                });

                google.maps.event.addListener(marker, "click", () => {
                    infowindow.setContent(
                        `<div class="ui header">${place.name}</div><p>${place.vicinity}</p>`
                    );

                    infowindow.open(map, marker);
                });
            });
        },
        getClinics() {
            axios.get('/api/clinics/', {
                headers: {
                    "Authorization": `Bearer ${parseCookie(document.cookie).token}`
                }
            })
                .then((response) => {
                    this.clinics = response.data
                    for (let i=0; i < this.clinics.length; i++){
                        const storage = getStorage();
                        const storageRef = ref(storage, 'images/' + this.clinics[i].url);
                        getDownloadURL(storageRef)
                            .then((url) => {
                                this.clinics[i].url = url
                            })
                    }
                })
                .catch((error) => {
                    console.log(error)
                })
        },
    },
    created() {
        this.getClinics()
    }
}

</script>