import { createWebHistory, createRouter } from 'vue-router';
import Homepage from './pages/Homepage.vue';
import Login from './pages/Login.vue';
import Register from './pages/Register.vue';
import ForgotPassword from './pages/ForgotPassword.vue';
import ResetPassword from './pages/ResetPassword.vue';
import Profile from './pages/Profile.vue'
import Upload from './pages/Upload.vue'
import UploadResult from './pages/UploadResult.vue'

import CardSlider from './pages/CardSlider.vue';
import MyMaps from './pages/MyMaps.vue';

import Clinics from './pages/Clinics.vue';
import Diseases from './pages/Diseases.vue';
import IndivDisease from './pages/IndivDisease.vue';
import IndividualSkinDiseases from './pages/IndividualSkinDiseases.vue';

import AdminProfile from './pages/admin-pages/AdminProfile.vue';
import AdminDiseases from './pages/admin-pages/AdminDiseases.vue';
import AdminClinics from './pages/admin-pages/AdminClinics.vue';
import AdminUsers from './pages/admin-pages/AdminUsers.vue';
import AddDisease from './pages/admin-pages/AddDisease.vue';
import EditDisease from './pages/admin-pages/EditDisease.vue';
import AddClinics from './pages/admin-pages/AddClinics.vue';
import EditClinics from './pages/admin-pages/EditClinics.vue';
import AddUser from './pages/admin-pages/AddUser.vue';
import EditUser from './pages/admin-pages/EditUser.vue';

const routes = [
    { path: '/', name: 'Homepage', component: Homepage },
    { path: '/login', name: 'Login', component: Login },
    { path: '/register', name: 'Register', component: Register },
    { path: '/forgotpassword', name: 'ForgotPassword', component: ForgotPassword },
    { path: '/resetpassword', name: 'ResetPassword', component: ResetPassword },
    { path: '/profile', name: 'Profile', component: Profile },
    { path: '/upload', name: 'Upload', component: Upload },
    { path: '/uploadresult', name: 'UploadResult', component: UploadResult },

    { path: '/cardslider', name: 'CardSlider', component: CardSlider },

    // My Maps --- delete later
    { path: '/mymaps', name: 'MyMaps', component: MyMaps },

    { path: '/clinics', name: 'Clinics', component: Clinics },
    { path: '/diseases', name: 'Diseases', component: Diseases },
    { path: '/indiv', name: 'IndivDisease', component: IndivDisease },
    
    // Admin Routes
    { path: '/admin/profile', name: 'AdminProfile', component: AdminProfile },
    { path: '/admin/diseases', name: 'AdminDiseases', component: AdminDiseases },
    { path: '/admin/clinics', name: 'AdminClinics', component: AdminClinics },
    { path: '/admin/users', name: 'AdminUsers', component: AdminUsers },
    { path: '/admin/adddisease', name: 'AddDisease', component: AddDisease },
    { path: '/admin/editdisease/:id', name: 'EditDisease', component: EditDisease },
    { path: '/admin/addclinics', name: 'AddClinics', component: AddClinics },
    { path: '/admin/editclinics/:id', name: 'EditClinics', component: EditClinics },
    { path: '/admin/adduser', name: 'AddUser', component: AddUser },
    { path: '/admin/edituser/:id', name: 'EditUser', component: EditUser },
]



const router = createRouter({
    history: createWebHistory(),
    routes,
  });

export default router;