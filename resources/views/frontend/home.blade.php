@extends('frontend.layouts.app')

@section('cssfile')
    @parent
@endsection

@section('jsfile')
    @parent
@endsection

@section('slider')
    @include('frontend.layouts.slider')
@endsection

@section('content')
    <!-- doctor area start -->
    <div class="rr-doctors-area  pb-80">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 wow rrfadeUp" data-wow-duration=".9s" data-wow-delay=".3s">
                    <div class="rr-doctors-title-box text-center mb-45">
                        <div class="rr-doctors-title-box z-index-2">
                            <span class="rr-section-subtitle p-relative"><img
                                    src="{{ asset('assets/img/testimonial/section-icon.png') }}" alt="img"> Our Best
                                Doctors <img src="{{ asset('assets/img/testimonial/section-icon.png') }}"
                                    alt="img"></span>
                            <h4 class="rr-section-title">Experts in Range Medical Services</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-50">
                @foreach ($doctors as $doctor)
                    <div class="col-xl-6 col-lg-6 col-md-6 col-12 wow rrfadeUp" data-wow-duration=".9s"
                        data-wow-delay=".3s">
                        <div class="rr-doctors-item mb-25 d-flex align-items-center justify-content-center">
                            <div class="rr-doctors-img">
                                <img src="{{ asset($doctor->photo) }}" alt="">
                            </div>
                            <div class="rr-doctors-content">
                                <h4 class="rr-doctors-name"><a href="doctor-details.html">{{ $doctor->name }}</a></h4>
                                <span>{{ $doctor->specialist->name }} </span>
                                <p>Efficiently myocardinate market-driven innovation via open-source alignments. </p>
                                <a class="rr-doctors-button" href="doctor-details.html">Book an Appointment </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="row">
                <div class="col-xl-12 col-12 wow rrfadeUp" data-wow-duration=".9s" data-wow-delay=".5s">
                    <div class="rr-doctors-btn text-center">
                        <a class="rr-btn-black" href="doctors.html"><span>View all Doctors <i
                                    class="fa-sharp fa-solid fa-plus"></i></span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- doctor area end -->

    <!-- service area start -->
    <section class="rr-service-area rr-service-height rr-service-wapp"
        data-background="{{ asset('assets/img/team/shap-bg.png') }}">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 wow rrfadeUp" data-wow-duration=".9s" data-wow-delay=".3s">
                    <div class="rr-price-2-title-box text-center mb-45">
                        <div class="rr-video-title-box z-index-2">
                            <span class="rr-video-subtitle p-relative"><img
                                    src="{{ asset('assets/img/testimonial/section-icon.png') }}" alt="img"> Our Best
                                Service <img src="{{ asset('assets/img/testimonial/section-icon.png') }}"
                                    alt="img"></span>
                            <h4 class="rr-video-title">Specialist are available</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="rr-service-active swiper-container">
                <div class="swiper-wrapper">
                    @foreach ($specialists as $specialist)
                        <div class="swiper-slide wow rrfadeUp" data-wow-duration=".9s" data-wow-delay=".3s">
                            <div class="rr-service-item fix mb-30">
                                <div class="rr-service-content white-bg p-relative">
                                    <div class="rr-service-number">
                                        <span>01</span>
                                    </div>
                                    <div class="rr-service-icon">
                                        <img src="{{ asset('assets/img/service/medicine.png') }}" alt="img">
                                    </div>
                                    <div class="rr-service-info ml-80">
                                        <h3 class="rr-service-title"><a
                                                href="service-details.html">{{ $specialist->name }}</a></h3>
                                        <span><i class="fa-solid fa-check"></i> <a href="service-details.html">Medicine &
                                                Health</a></span>
                                    </div>
                                    <p>{{ $specialist->details }}</p>
                                    <div class="rr-service-right-icon text-end">
                                        <a href="service-details.html"><i class="fa-solid fa-angle-right"></i></a>
                                    </div>
                                </div>

                                <div class="rr-service-thumb">
                                    
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="rr-main-swiper-dot text-center"></div>
            </div>
            <div class="gallery-slider-dots text-center">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </section>
    <!-- service area end -->
@endsection
