import { createWebHistory, createRouter } from 'vue-router';
import Homepage from './pages/Homepage.vue';
import Login from './pages/Login.vue';
import Register from './pages/Register.vue';
import ForgotPassword from './pages/ForgotPassword.vue';
import ResetPassword from './pages/ResetPassword.vue';

import Clinics from './pages/Clinics.vue';
import Diseases from './pages/Diseases.vue';
import IndividualSkinDiseases from './pages/IndividualSkinDiseases.vue';

import AdminProfile from './pages/admin-pages/AdminProfile.vue';
import AdminDiseases from './pages/admin-pages/AdminDiseases.vue';
import AdminClinics from './pages/admin-pages/AdminClinics.vue';
import AdminUsers from './pages/admin-pages/AdminUsers.vue';


const routes = [
    { path: '/', name: 'Homepage', component: Homepage },
    { path: '/login', name: 'Login', component: Login },
    { path: '/register', name: 'Register', component: Register },
    { path: '/forgotpassword', name: 'ForgotPassword', component: ForgotPassword },
    { path: '/resetpassword', name: 'ResetPassword', component: ResetPassword },

    { path: '/clinics', name: 'Clinics', component: Clinics },
    { path: '/diseases', name: 'Diseases', component: Diseases },
    { path: '/indiv', name: 'IndividualSkinDiseases', component: IndividualSkinDiseases },
    
    // Admin Routes
    { path: '/adminprofile', name: 'AdminProfile', component: AdminProfile },
    { path: '/admindiseases', name: 'AdminDiseases', component: AdminDiseases },
    { path: '/adminclinics', name: 'AdminClinics', component: AdminClinics },
    { path: '/adminusers', name: 'AdminUsers', component: AdminUsers },
]



const router = createRouter({
    history: createWebHistory(),
    routes,
  });

export default router;