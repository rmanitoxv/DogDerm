import { createWebHistory, createRouter } from 'vue-router';
import Homepage from './pages/Homepage.vue';
import Login from './pages/Login.vue';

const routes = [
    { path: '/', name: 'Homepage', component: Homepage },
    { path: '/login', name: 'Login', component: Login },
]



const router = createRouter({
    history: createWebHistory(),
    routes,
  });

export default router;