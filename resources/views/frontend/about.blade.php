@extends('frontend.layouts.app')

@section('breadcrumb')
<div class="breadcrumb__area breadcrumb__overlay breadcrumb__height fix p-relative"
         data-background="{{asset('assets/img/breadcurmb/breadcurmb-1-10.jpg')}}">
         <div class="breadcrumb-shap d-none d-xxl-block">
            <img src="{{asset('assets/img/breadcurmb/img-2.png')}}" alt="img">
         </div>
         <div class="container">
            <div class="row">
               <div class="col-xl-5 col-md-5">
                  <div class="breadcrumb__content z-index">
                     <div class="breadcrumb__section-title-box">
                        <h3 class="breadcrumb__title">About</h3>
                     </div>
                     <div class="breadcrumb__list">
                        <span><a href="index.html">Home</a></span>
                        <span class="dvdr"><i>/</i></span>
                        <span>About</span>
                     </div>
                  </div>
               </div>
               <div class="col-xl-7 col-md-7">
                  <div class="breadcrumb-img z-index-3">
                     <div class="breadcrumb-img mt-140">
                        <img src="{{asset('assets/img/breadcurmb/img.png')}}" alt="img">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    
@endsection

@section('content')
      <!-- About area end -->
      <section class="rr-home2-about pt-100 pb-100">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-6 col-md-6 col-12 mb-20 wow fadeInLeft">
                  <div class="rr-section rr-style-1 text-left mb-40">
                     <span class="rr-section-subtitle p-relative"><img src="assets/img/testimonial/section-icon.png"
                           alt="img"> What About Us <img src="assets/img/testimonial/section-icon.png" alt="img"></span>
                     <h4 class="rr-section-title pb-5">About Medical Immediately Advanced Manual.</h4>
                     <p class="rr-section-description">There are many variations Lorem Ipsum availab.There are many of
                        pas
                        ofb.There are many variations of by injected humour or randomised pas of Lorem Ipsum
                        availab.There
                        are many variations
                     </p>
                  </div>
                  <div class="row mt-5 mb-20">
                     <div class="col-lg-6 col-md-6 col-6">
                        <div class="rr-info-box1">
                           <div class="rr-info-box-icon mb-15">
                              <img src="assets/img/feature/icon-3.png" alt="img">
                           </div>
                           <div class="rr-info-box1-info">
                              <h5 class="rr-info-title">Infection Prevention</h5>
                              <p class="rr-infobox-description">It is a long established fact that a reader will be
                                 distracted. </p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6 col-6">
                        <div class="rr-info-box1">
                           <div class="rr-info-box-icon mb-15">
                              <img src="assets/img/feature/icon-4.png" alt="img">
                           </div>
                           <div class="rr-info-box1-info">
                              <h5 class="rr-info-title">Inpatient Services</h5>
                              <p class="rr-infobox-description">It is a long established fact that a reader will be
                                 distracted. </p>
                           </div>
                        </div>
                     </div>
                  </div>
                     <div class="rr-button-block">
                        <a class="rr-btn-1" href="about.html"><span>Read More <i
                                 class="fa-sharp fa-solid fa-plus"></i></span></a>
                     </div>
               </div>
   
               <div class="col-lg-6 col-md-6 col-12">
                  <div class="about-us-img">
                     <div class="rr-about-2-experience wow fadeInRight">
                        <span>29+ Years Experience</span>
                     </div>
                     <img src="assets/img/about/img-9.jpg" class="img-fluid rr-image1 wow fadeInRight" alt="home">
                     <img src="assets/img/about/img-10.jpg" class="img-fluid rr-image2 wow fadeInRight" alt="home">
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- About area end -->
@endsection