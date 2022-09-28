<template>
    <div>
        <div>
            <NavbarGuest />
        </div>
        <div>
            <router-view></router-view>
        </div>
    </div>
</template>

<script>
    import NavbarGuest from './components/NavbarGuest.vue'
    export default {
        components: {
            NavbarGuest
        }
    }
</script>