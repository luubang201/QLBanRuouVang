@extends('frontend.layouts.main')
@section('content')
    @foreach($hot_Banner as $item)
    <div class="hero-wrap" style="background-image: url({{asset($item->image)}});" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-8 ftco-animate d-flex align-items-end">
                    <div class="text w-100 text-center">
                        <h1 class="mb-4">{!! $item->title !!}</span>.</h1>
                        <p><a href="/frontend/#" class="btn btn-primary py-2 px-4">Shop Now</a> <a href="/frontend/#" class="btn btn-white btn-outline-white py-2 px-4">Read more</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach



    <section class="ftco-section ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-md-6 img img-3 d-flex justify-content-center align-items-center" style="background-image: url(/frontend/images/about.jpg);">
                </div>
                <div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5">
                    <div class="heading-section">
                        <span class="subheading">Since 1905</span>
                        <h2 class="mb-4">Desire Meets A New Taste</h2>

                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                        <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country.</p>
                        <p class="year">
                            <strong class="number" data-number="115">0</strong>
                            <span>Years of Experience In Business</span>
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- PARTNER -->
    <section class="ftco-section ftco-no-pb">
        <div class="container">
            <div class="row">
                @foreach($hot_partner as $item)
                <div class="col-lg-2 col-md-4 ">
                    <div class="sort w-100 text-center ftco-animate">
                        <div class="img" style="background-image: url({{asset($item->image)}});"></div>
                        <h3>{{$item->name}}</h3>
                    </div>
                </div>
                    @endforeach


            </div>
        </div>
    </section>
`    <!-- PRODUCT -->
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center pb-5">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Our Delightful offerings</span>
                    <h2>Tastefully Yours</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 d-flex">
                    @foreach($hot_Product as $item)
                    <div class="product ftco-animate">
                        <div class="img d-flex align-items-center justify-content-center" style="background-image: url({{asset($item->image)}});">

                            <div class="desc">
                                <p class="meta-prod d-flex">
                                    <a href="{{ route('home.cart') }}" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
                                    <a href="/frontend/#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
                                    <a href="{{ route('home.detail') }}" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
                                </p>
                            </div>
                        </div>
                        <div class="text text-center">
                            <span class="sale">Sale</span>
<!--                            <span class="category">Brandy</span>-->
                            <h2>{{$item->name}}</h2>
                            <p class="mb-0"><span class="price price-sale">{{ number_format($item -> price,0,",",".") }}</span>
                                            <span class="price">{{ number_format($item -> sale,0,",",".") }} </span></p>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <a href="{{ route('home.product') }}" class="btn btn-primary d-block">View All Products <span class="fa fa-long-arrow-right"></span></a>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section img" style="background-image: url(/frontend/images/bg_4.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <span class="subheading">Testimonial</span>
                    <h2 class="mb-3">Happy Clients</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(/frontend/images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(/frontend/images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(/frontend/images/person_3.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(/frontend/images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(/frontend/images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- BLOG -->
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Blog</span>
                    <h2>Recent Blog</h2>
                </div>
            </div>
            <div class="row d-flex">
                @foreach($hot_news as $item)
                <div class="col-lg-7 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                        <a href="/frontend/blog-single.html" class="block-20 img" style="background-image: url({{asset($item->image)}});">
                        </a>
                        <div class="text p-4 bg-light">
<!--                            <div class="meta">
                                <p><span class="fa fa-calendar"></span> 23 April 2020</p>
                            </div>-->
                            <h3 class="heading mb-3"><a href="/frontend/#">{{$item->title}}</a></h3>
                            <p> {!! $item->content !!}</p>
                            <a href="/frontend/#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

                        </div>
                    </div>
                </div>
                @endforeach
                @foreach($article as $item)
                <div class="col-lg-5 d-flex align-items-stretch ftco-animate">
                    <div class="blog-entry d-flex">
                        <a href="/frontend/blog-single.html" class="block-20 img" style="background-image: url({{asset($item->image)}});">
                        </a>
                        <div class="text p-4 bg-light">
                            <div class="meta">
                                <p><span class="fa fa-calendar"></span> 23 April 2020</p>
                            </div>
                            <h3 class="heading mb-3"><a href="/frontend/#">{{$item->title}}</a></h3>
                            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                            <a href="/frontend/#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

                        </div>
                    </div>
                </div>
                    @endforeach

            </div>
        </div>
@endsection
