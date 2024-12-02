<header class="rr-header-height ">
   <!-- header area start -->
   <div id="header-sticky" class="rr-header-area rr-header-2-border"
      data-background="{{ asset('assets/img/slider/header-bg-shape.png') }}">
      <div class="container custom-container-1">
            <div class="row align-items-center">
               <div class="col-xl-2 col-lg-4 col-6">
                  <div class="rr-header-logo">
                     <a href="index.html"><img src="{{ asset('assets/img/logo/logo-white.png') }}" alt="img"></a>
                  </div>
               </div>
               <div class="col-xl-7 d-none d-xl-block">
                  <div class="rr-header-main-menu">
                        <nav class="rr-main-menu-content text-end">
                           <ul>
                              <li>
                                    <a href="{{ route('home') }}">Home</a>

                              </li>
                              <li><a href="{{ route('about') }}">about us</a></li>
                              <li class="has-dropdown">
                                    <a href="service.html">Service</a>
                                    <ul class="submenu rr-submenu">
                                       <li><a href="service.html">Service</a></li>
                                       <li><a href="service-details.html">Service Details</a></li>
                                    </ul>
                              </li>
                              <li class="has-dropdown">
                                    <a href="#">Pages</a>
                                    <ul class="submenu rr-submenu">
                                       <li><a href="team.html">team</a></li>
                                       <li><a href="team-details.html">team details</a></li>
                                       <li><a href="pricing.html">pricing </a></li>
                                       <li><a href="project.html">project</a></li>
                                       <li><a href="project-details.html">project-details</a></li>
                                       <li><a href="doctors.html">doctors</a></li>
                                       <li><a href="doctor-details.html">doctors-details</a></li>
                                       <li><a href="404.html">error</a></li>
                                    </ul>
                              </li>
                              <li class="has-dropdown">
                                    <a href="blog.html">Blog</a>
                                    <ul class="submenu rr-submenu">
                                       <li><a href="blog.html">Blog Grid</a></li>
                                       <li><a href="blog-sidebar.html">Blog Standard</a></li>
                                       <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                              </li>
                              <li><a href="contact.html">Contact</a></li>
                           </ul>
                        </nav>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-8 col-6">
                  <div class="rr-header-right d-flex align-items-center justify-content-end ">
                        <div class="rr-header-2-icon d-none d-xl-block mr-15">
                           <button class="search-open-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
                        </div>
                        <div class="rr-header-btn d-none d-md-block">
                           <a class="rr-btn rr-header-spc" href="{{route('front_app.create')}}"><span>Make Appointment <i
                                       class="fa-sharp fa-solid fa-plus"></i></span></a>
                        </div>
                        <div class="rr-header-bar d-xl-none">
                           <button class="rr-menu-bar"><i class="fa-solid fa-bars"></i></button>
                        </div>
                  </div>
               </div>
            </div>
      </div>
   </div>
   <!-- header area end -->

</header>
