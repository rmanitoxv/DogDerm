<style>
/*=============== GOOGLE FONTS ===============*/
@import url(https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap);
@import url(https://fonts.googleapis.com/css2?family=Barlow+Condensed:ital,wght@1,900&display=swap);
@import url(https://fonts.googleapis.com/css2?family=Amiko:wght@400;500;600;700;800;900&family=Barlow+Condensed:ital,wght@1,900&display=swap);

@import url(https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css);
@import url(https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css);
@import url(https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css);
/* @import url(https://maps.googleapis.com/maps/api/js?key=AIzaSyCSvvmwaZ3j0VaHbCE2MJZSKxguQRPcS-o&callback=initMap); */
@import url(https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCSvvmwaZ3j0VaHbCE2MJZSKxguQRPcS-o);
/* fontawesome */

.sidebar {
    position: fixed;
    width: 22rem;
    height: 100vh;
    background: #EAF0F7;
    top: 0;
    left: 0;
    transition: all 0.4s ease;
    margin-left: 0;
    z-index: 100;
}

.sidebar-hidden {
    position: fixed;
    width: 22rem;
    height: 100vh;
    background: #EAF0F7;
    top: 0;
    left: -22rem;
    transition: all 0.4s ease;
    z-index: 100;
}

.admin-body{
    transition: all 0.4s ease;
    margin-left: 22.5rem;
}

.admin-body-hidden{
    transition: all 0.4s ease;
    margin-left: 0rem;
}

.sidebar-link:hover {
    color: #FE8D2A;
}

/*========================= NAVBAR CSS =========================*/

/*=============== VARIABLES CSS ===============*/
:root {
    --header-height: 3rem;

    /*========== Colors ==========*/
    --hue: 174;
    --sat: 63%;
    --first-color: #FE8D2A;
    --first-color-alt: #FF9F0A;
    --title-color: #112B3C;
    --text-color: #808080;
    --body-color: #FDFDFD;
    --container-color: #FDFDFD;

    /*========== Font and typography ==========*/
    --body-font: 'Poppins', sans-serif;
    --logo-font: 'Barlow', sans-serif;
    --h1-font-size: 1.5rem;
    --normal-font-size: .938rem;
    --tiny-font-size: .625rem;

    /*========== z index ==========*/
    --z-tooltip: 10;
    --z-fixed: 100;
}

@media screen and (min-width: 968px) {
    :root {
        --h1-font-size: 2.25rem;
        --normal-font-size: 1rem;
    }
}

/*=============== BASE ===============*/
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

html {
    scroll-behavior: smooth;
}

nav {
    margin: var(--header-height) 0 0 0;
    font-family: var(--body-font);
    font-size: var(--normal-font-size);
    background-color: var(--body-color);
    color: var(--text-color);
}

ul {
    list-style: none;
}

a {
    text-decoration: none;
}

img {
    max-width: 100%;
    height: auto;
}

/*=============== REUSABLE CSS CLASSES ===============*/
.section {
    padding: 4.5rem 0 2rem;
}

.section__title {
    font-size: var(--h1-font-size);
    color: var(--title-color);
    text-align: center;
    margin-bottom: 1.5rem;
}

.section__height {
    height: 100vh;
}

/*=============== LAYOUT ===============*/
.container {
    max-width: 968px;
    margin-left: 1rem;
    margin-right: 1rem;
}

/*=============== HEADER ===============*/
.header {
    box-shadow: 0 1px 12px hsla(var(--hue), var(--sat), 15%, 0.15);
    top: 0;
    left: 0;
    width: 100%;
    background-color: var(--container-color);
    z-index: var(--z-fixed);
    transition: .4s;
}

/*=============== NAV ===============*/
.nav {
    height: var(--header-height);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.nav__img {
    width: 32px;
    border-radius: 50%;
}

.nav__logo {
    font-family: var(--logo-font);
    color: var(--title-color);
    font-weight: 900;
}

@media screen and (max-width: 767px) {
    .nav__menu {
        position: fixed;
        bottom: 0;
        left: 0;
        background-color: var(--container-color);
        box-shadow: 0 -1px 12px hsla(var(--hue), var(--sat), 15%, 0.15);
        width: 100%;
        height: 4rem;
        padding: 0 1rem;
        display: grid;
        align-content: center;
        border-radius: 1.25rem 1.25rem 0 0;
        transition: .4s;
    }

    .nav__item__register {
        display: none;
    }
}

.nav__list,
.nav__link {
    display: flex;
    align-items: center;
}

.nav__link {
    flex-direction: column;
    align-items: center;
    row-gap: 4px;
    color: var(--title-color);
    font-weight: 600;
}

.nav__list {
    justify-content: space-around;
}

.nav__name {
    font-size: var(--tiny-font-size);
    /* display: none;*/
    /* Minimalist design, hidden labels */
}

.nav__icon {
    font-size: 1.5rem;
}

/*Active link*/
.active-link {
    position: relative;
    color: var(--first-color);
    transition: .3s;
}

/* Minimalist design, active link */
/* .active-link::before{
  content: '';
  position: absolute;
  bottom: -.5rem;
  width: 4px;
  height: 4px;
  background-color: var(--first-color);
  border-radius: 50%;
} */

/* Change background header */
.scroll-header {
    box-shadow: 0 1px 12px hsla(var(--hue), var(--sat), 15%, 0.15);
}

/*=============== MEDIA QUERIES ===============*/
@media screen and (max-width: 320px) {
    .nav__name {
        display: none;
    }
}

/* For medium devices */
@media screen and (min-width: 576px) {
    .nav__list {
        justify-content: center;
        column-gap: 3rem;
    }
}

@media screen and (min-width: 767px) {
    nav {
        margin: 0;
    }

    .section {
        padding: 7rem 0 2rem;
    }

    .nav {
        height: calc(var(--header-height) + 1.5rem);
        /* 4.5rem */
    }

    .nav__img {
        display: none;
    }

    .nav__icon {
        display: none;
    }

    .nav__name {
        font-size: var(--normal-font-size);
        /* display: block; */
        /* Minimalist design, visible labels */
    }

    .nav__link:hover {
        color: var(--first-color);
    }

    /* First design, remove if you choose the minimalist design */
    .active-link::before {
        content: '';
        position: absolute;
        bottom: -.75rem;
        width: 1rem;
        height: .25rem;
        background-color: var(--first-color);
        border-radius: 1rem;
    }

    /* Minimalist design */
    /* .active-link::before{
      bottom: -.75rem;
  } */
}

/* For large devices */
@media screen and (min-width: 1024px) {
    .container {
        margin-left: auto;
        margin-right: auto;
    }
}

/*==============================================================*/

/*========================= NAVBAR CSS =========================*/
/*==================================== VARIABLES CSS ====================================*/
:root {
    /*===== Colors =====*/
    --text-color: #112B3C;
    --text-color-light: #808080;
    --light-gray: #EAF0F7;

    --orange-1: #FE8D2A;
    --orange-2: #FF9F0A;
    --yellow-1: #FFD60A;
    --blue-1: #6CBAFE;
    --blue-2: #93CDFF;
    --blue-3: #0075FF;
    --red-3: #FF375F;
    --teal-1: #127393;
    --teal-2: #5DC9ED;
    --blue-light: #EDF8FC;
    --orange-light: #FDC690;
    --pink-light: #F8E6E6;

    /*===== Font and typography =====*/
    --body-font: 'Poppins', sans-serif;
    --title-font: 'Amiko', sans-serif;
    --logo-font: 'Barlow', sans-serif;
    --large-font-size: 2rem;
    --h1-font-size: 1.5rem;
    --normal-font-size: .938rem;
    --small-font-size: .813rem;
}

@media screen and (min-width: 768px) {
    :root {
        --normal-font-size: 1rem;
        --small-font-size: .875rem;
    }
}

/*===== BASE =====*/
*,
::before,
::after {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;
    font-family: var(--body-font);
    font-size: var(--normal-font-size);
    color: var(--text-color);
}

h1 {
    margin: 0;
}

a {
    text-decoration: none;
}

img {
    max-width: 100%;
    height: auto;
    display: block;
}

/*==================================== LOGIN ====================================*/
.login {
    display: grid;
    grid-template-columns: 100%;
    height: 100vh;
    margin-left: 1.5rem;
    margin-right: 1.5rem;
}

.login__content {
    display: grid;
}

.login__img,
.recoveracc__img {
    justify-self: center;
}

.login__img img,
.recoveracc__img img {
    width: 310px;
    margin-top: 1.5rem;
}

.login__forms {
    position: relative;
    height: 368px;
}

.login__registre,
.login__create {
    position: absolute;
    bottom: 1rem;
    width: 100%;
    background-color: white;
    padding: 4rem 2rem;
    border-radius: 1rem;
    text-align: center;
    box-shadow: 0 8px 20px rgba(35, 0, 77, .2);
    animation-duration: .4s;
    animation-name: animate-login;
}

@keyframes animate-login {
    0% {
        transform: scale(1, 1);
    }

    50% {
        transform: scale(1.1, 1.1);
    }

    100% {
        transform: scale(1, 1);
    }
}

.logo__title {
    font-size: var(--large-font-size);
    margin-bottom: 1rem;
    font-family: var(--logo-font);
    font-weight: 900;
}

.logo__title span {
    color: var(--orange-1);
}

.login__title {
    font-size: var(--h1-font-size);
    margin-bottom: 2rem;
    font-family: var(--title-font);
}

.recoveracc__box {
    display: grid;
    grid-template-columns: max-content 1fr;
    column-gap: .5rem;
    padding: 1.125rem 1rem;
    background-color: var(--light-gray);
    margin: 1rem 0 5rem 0;
    border-radius: .5rem;
}

.login__box,
.newpass__box,
.confirmpass__box {
    display: grid;
    grid-template-columns: max-content 1fr;
    column-gap: .5rem;
    padding: 1.125rem;
    background-color: var(--light-gray);
    margin: 1rem 0 0;
    border-radius: .5rem;
}

.login__box1 {
    display: grid;
    padding: 1.125rem;
    background-color: var(--light-gray);
    margin: 1rem 0 0;
    border-radius: .5rem;
}

.login__icon {
    font-size: 1.5rem;
    color: var(--orange-1);
}

.login__input {
    border: none;
    outline: none;
    font-size: var(--normal-font-size);
    font-weight: 500;
    color: var(--text-color);
    background-color: var(--light-gray);
    width: 100%;
}

.login__input::placeholder {
    font-size: var(--normal-font-size);
    font-family: var(--body-font);
    color: var(--text-color-light);
}

.login__forgot {
    display: block;
    width: max-content;
    margin-left: auto;
    margin-top: .5rem;
    font-size: var(--small-font-size);
    font-weight: 400;
    color: var(--text-color-light);
}

.login__button {
    display: block;
    padding: 1rem;
    margin: 2rem 0;
    background-color: var(--orange-1);
    color: #FFF;
    font-weight: 600;
    text-align: center;
    border-radius: .5rem;
    transition: .3s;
}

.newpass-continue__button {
    display: block;
    padding: 1rem;
    margin: 2rem 0;
    background-color: #fff;
    color: #FFF;
    font-weight: 600;
    text-align: center;
    border-radius: .5rem;
    transition: .3s;
}

.login__button:hover {
    background-color: var(--text-color);
}

.login__account,
.login__signin,
.login__signup {
    font-weight: 400;
    font-size: var(--small-font-size);
}

.login__account {
    color: var(--text-color-light);
}

.login__signin,
.login__signup {
    color: var(--orange-1);
    cursor: pointer;
}

/*Show login*/
.block {
    display: block;
}

/*Hidden login*/
.none {
    display: none;
}

/* .recoveracc__img, .recoveracc__img img
  {
    display: none;
  } */

/* ==================================== MEDIA QUERIES ====================================*/
/* TABLETS AND LARGER SMARTPHONES */
@media screen and (min-width: 576px) {
    .login__forms {
        width: 348px;
        justify-self: center;
    }
}

/* LAPTOPS, LARGER TABLETS IN LANDSCAPE AND SMALL DESKTOPS */
@media screen and (min-width: 1024px) {
    .login {
        height: 100vh;
        overflow: hidden;
    }

    .login__content {
        grid-template-columns: repeat(2, max-content);
        justify-content: center;
        align-items: center;
    }

    .login__img,
    .recoveracc__img {
        display: flex;
        width: 1000px;
        height: 588px;
        border-radius: 1rem;
        padding-left: 1rem;
    }

    .login__img img {
        width: 55%;
        margin: 0 0 0 3rem;
    }

    .recoveracc__img img {
        width: 50%;
        margin-top: 0;
    }

    .login__registre,
    .login__create {
        left: -11rem;
    }

    .login__registre {
        bottom: -2rem;
    }

    .login__create {
        bottom: -5.5rem;
    }
}


/***** INDIVIDUAL DISEASES *****/
.main-container {
    margin: 0 auto;
    width: 950px;
}
/* MAIN PAGE TITLE */
.main-title {
    font-family: "Amiko", sans-serif;
    font-size: 40px;
    font-weight: bold;
    text-align: center;
    margin: 60px 0 80px;
}

/* PAGE GRID */
.indiv-page-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 3rem 1.5rem;
    grid-auto-flow: row;
}

/***** INDIVIDUAL ARTICLE CONTAINER *****/
.indiv-page-container {
    border-radius: 15px;
    box-shadow: rgba(149, 157, 165, 0.253) 0px 5px 10px;
}

/***** ARTICLE INFO CONTAINER *****/
.info-container {
    padding: 20px;
}
/* IMAGE */
.indiv-page-container img {
    border-radius: 15px 15px 0px 0px;
    width: 300px;
    height: 230px;
    object-fit: cover;
}
/* ARTICLE TITLE */
.page-title {
    font-family: "Amiko", sans-serif;
    color: #112b3c;
    font-size: 25px;
    font-weight: bold;
}
/* DESCRIPTION */
.description {
    font-family: "Poppins", sans-serif;
    color: #6c6363;
    font-size: 14px;
}
/* BUTTON */
.read-more {
    text-decoration: none;
    font-family: "Poppins", sans-serif;
    color: #112b3c;
    font-size: 14px;
    font-weight: 600;
    background-color: #a3dbe4;
    border: none;
    border-radius: 15px;
    padding: 10px 15px;
    cursor: pointer;
}
.read-more:hover {
    background-color: #8ed4df;
}

@media only screen and (max-width: 600px) {
    /* MAIN PAGE TITLE */
    .main-title {
        font-size: 30px;
    }
    /***** MAIN CONTAINER *****/
    .main-container {
        width: auto;
    }
    /* PAGE GRID */
    .indiv-page-grid {
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 1rem 1rem;
    }
    /* IMAGE */
    .indiv-page-container img {
        width: 205px;
        height: 130px;
    }
    /* ARTICLE TITLE */
    .page-title {
        font-size: 20px;
    }
    /* DESCRIPTION */
    .description {
        font-size: 12px;
    }
    /* BUTTON */
    .read-more {
        font-size: 12px;
    }
}


    /* MAIN CONTAINER */
    .main-container {
        margin: 0 auto;
        width: 950px;
    }
    .content-container {
        min-width: 400px;
        border-radius: 20px;
        padding: 50px;
        box-shadow: rgba(149, 157, 165, 0.281) 0px 8px 24px;
    }

    /* ON THIS PAGE */
    .on-this-page {
        font-family: "Amiko", sans-serif;
        color: #ffb483;
        font-size: 20px;
    }
    .onpage-links a {
        font-family: "Amiko", sans-serif;
        color: #6c6363;
        font-size: 16px;
    }
    .onpage-links ul li {
        list-style-type: none;
        padding-left: 0px;
        margin-left: 0px;
        text-indent: 0px;
    }
    .onpage-links li {
        list-style-type: none;
        padding-left: 0;
        text-align: left;
        display: inline;
    }

    /* TITLE */
    .disease-title {
        font-family: "Amiko", sans-serif;
        color: #a3dbe4;
        font-size: 35px;
    }

    /* SUB-TITLES */
    .disease-subtitles {
        font-family: "Amiko", sans-serif;
        color: #a3dbe4;
        font-size: 20px;
        font-weight: 700;
    }
    .gray-subtitles {
        font-family: "Amiko", sans-serif;
        color: #6c6363;
        font-size: 18px;
        font-weight: 600;
    }

    /* DESCRIPTION CONTAINER */
    .desc-container {
        font-family: "Poppins", sans-serif;
        font-size: 24xp;
        padding-bottom: 20px;
    }

    /* WARNING TEXT */
    .warning {
        margin-top: 50px;
        font-family: "Amiko", sans-serif;
        color: #fe8265;
        font-size: 14px;
    }
    
    @media only screen and (max-width: 650px) {
        /* MAIN CONTAINER */
        .main-container {
            margin: 0 auto;
            width: fit-content;
        }
        .content-container {
            min-width: 50px;
            padding: 10px;
            box-shadow: none;
        }
    }


/*=============== FOOTER ===============*/
.footer {
  overflow: hidden;
}

.footer__container {
  position: relative;
  row-gap: 2rem;
}

.footer__logo {
  display: flex;
  align-items: center;
  column-gap: .25rem;
  color: var(--title-color);
  font-weight: var(--font-medium);
}

.footer__logo-img {
  width: 1.5rem;
}

.footer__description {
  font-size: var(--small-font-size);
}

.footer__logo, 
.footer__title {
  margin-bottom: var(--mb-1);
}

.footer__title {
  font-size: var(--h3-font-size);
}

.footer__links, 
.footer__aviables {
  display: flex;
  flex-direction: column;
  row-gap: .75rem;
}

.footer__link {
  color: var(--text-color);
  transition: .3s;
}

.footer__link:hover {
  color: var(--title-color);
}


.footer__social{
  font-size: 1.5rem;
  color: var(--title-color);
  margin-right: var(--mb-3);
}

.footer__social:hover{
  color: var(--first-color);
  cursor: pointer;
}


.footer__aviable-img {
  width: 100px;
  cursor: pointer;
}

.footer__copy {
  display: block;
  margin: 3.5rem 0 1rem 0;
  text-align: center;
  font-size: var(--smaller-font-size);
  color: var(--text-color-light);
}

.footer__img1, 
.footer__img2 {
  position: absolute;
  width: 100px;
}

.footer__img1 {
  top: 25%;
  right: 2rem;
}

.footer__img2 {
  top: 75%;
  right: -4rem;
}

/*==============================================================*/

/*=============== FOOTER ===============*/
.footer {
    overflow: hidden;
}

.footer__container {
    position: relative;
    row-gap: 2rem;
    display: flex;
    justify-content: center;
}

.footer__container div {
    margin: 12px;
}

.footer__logo {
    display: flex;
    align-items: center;
    column-gap: 0.25rem;
    color: var(--title-color);
    font-weight: var(--font-medium);
}

.footer__logo-img {
    width: 1.5rem;
}

.footer__description {
    font-size: var(--small-font-size);
}

.footer__logo,
.footer__title {
    margin-bottom: var(--mb-1);
}

.footer__title {
    font-size: var(--h3-font-size);
}

.footer__links,
.footer__aviables {
    display: flex;
    flex-direction: column;
    row-gap: 0.75rem;
}

.footer__link {
    color: var(--text-color);
    transition: 0.3s;
}

.footer__link:hover {
    color: var(--title-color);
}

.footer__social {
    font-size: 1.5rem;
    color: var(--title-color);
    margin-right: var(--mb-3);
}

.footer__social:hover {
    color: var(--first-color);
    cursor: pointer;
}

.footer__aviable-img {
    width: 100px;
    cursor: pointer;
}

.footer__copy {
    display: block;
    margin: 3.5rem 0 1rem 0;
    text-align: center;
    font-size: var(--smaller-font-size);
    color: var(--text-color-light);
}

.footer__img1,
.footer__img2 {
    position: absolute;
    width: 100px;
}

.footer__img1 {
    top: 25%;
    right: 2rem;
}

.footer__img2 {
    top: 75%;
    right: -4rem;
}


</style>