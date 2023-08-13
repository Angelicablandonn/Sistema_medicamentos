@extends('frontend.layouts.master')
@section('content')
<!-- Sección de Medicamentos -->
<section class="doctor_part section_padding">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-8">
                <div class="section_tittle text-center">
                    <h2>Medicamentos</h2>
                    <p>En Droguería La Economía, nos dedicamos a brindarte productos farmacéuticos de calidad y un servicio excepcional. Cuidamos de ti y tu familia.</p>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach($medicamentos as $medicamento)
            <div class="col-sm-6 col-lg-3">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        @if($medicamento->imagen)
                        <img src="{{ asset('images/' . $medicamento->imagen) }}" class="medicamento-img" alt="Imagen del Medicamento">
                        @else
                        <img src="{{ asset('backend/img/thumbnail-default.jpg') }}" class="medicamento-img" alt="Imagen por Defecto">
                        @endif
                        <div class="social_icon">
                            <ul>

                                <li>  <a href="#" data-toggle="modal" data-target="#detalleModal{{$medicamento->id}}">
                                    <i class="ti-shopping-cart"></i>
                                </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single_text">
                        <div class="single_blog_text">
                            <h3>{{ $medicamento->nombre }}</h3>
                            <p>{{ $medicamento->detalles }}</p>
                            <span class="badge {{ $medicamento->status == 'active' ? 'badge-success' : 'badge-warning' }}">{{ $medicamento->status }}</span>
                            <p class="precio">${{ $medicamento->precio }}</p>


                        </div>
                    </div>
                    <div class="modal fade" id="detalleModal{{$medicamento->id}}" tabindex="-1" role="dialog" aria-labelledby="detalleModalLabel{{$medicamento->id}}" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="detalleModalLabel{{$medicamento->id}}">{{$medicamento->nombre}}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>{{$medicamento->detalles}}</p>
                                    <p class="precio"><strong>Precio:</strong> ${{$medicamento->precio}}</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                        <a href="{{ route('pedidos.create'), $medicamento->id}}" class="btn btn-success">
                                            <i class="fas fa-check"></i> Confirmar Compra
                                        </a>
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>

        </div>
    </div>
            @endforeach

    </div>
</section>
    <!--::doctor_part end::-->
   <!-- banner part start-->
   <section class="banner_part">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 col-xl-5">
                <div class="banner_text">
                    <div class="banner_text_iner">

                        <h5>Tu salud es nuestra prioridad</h5>
                        <h1>Droguería La Economía</h1>
                        <p>En Droguería La Economía, nos dedicamos a brindarte productos farmacéuticos de calidad y un servicio excepcional. Cuidamos de ti y tu familia.</p>
                        <a href="#" class="btn_2">Comprar medicamentos</a>

                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="banner_img">
                    <img src="{{ asset('frontend/img/banner_img.png')}}" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- banner part start-->
<!-- ... (código anterior) ... -->
<!-- Medicamentos section start -->



<!-- about us part start-->
<section class="about_us padding_top">
<div class="container">
    <div class="row justify-content-between align-items-center">
        <div class="col-md-6 col-lg-6">
            <div class="about_us_img">
                <img src="{{ asset('frontend/img/top_service.png') }}" alt="">
            </div>
        </div>
        <div class="col-md-6 col-lg-5">
            <div class="about_us_text">
                <h2>About us</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit sed
                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                    Quis ipsum suspendisse ultrices gravida. Risus cmodo viverra
                    maecenas accumsan lacus vel</p>
                <a class="btn_2 " href="#">learn more</a>
                <div class="banner_item">
                    <div class="single_item">
                        <img src="{{ asset('frontend/img/icon/banner_1.svg') }}" alt="">
                        <h5>Emergency</h5>
                    </div>
                    <div class="single_item">
                        <img src="{{ asset('frontend/img/icon/banner_2.svg') }}" alt="">
                        <h5>Appointment</h5>
                    </div>
                    <div class="single_item">
                        <img src="{{ asset('frontend/img/icon/banner_3.svg') }}" alt="">
                        <h5>Qualfied</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<!-- about us part end-->

<!-- ... (código posterior) ... -->


<!-- feature_part start-->
<section class="feature_part">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-8">
            <div class="section_tittle text-center">
                <h2>Our services</h2>
            </div>
        </div>
    </div>
    <div class="row justify-content-between align-items-center">
        <div class="col-lg-3 col-sm-12">
            <div class="single_feature">
                <div class="single_feature_part">
                    <span class="single_feature_icon"><img src="{{ asset('frontend/img/icon/feature_1.svg') }}" alt=""></span>
                    <h4>Better Future</h4>
                    <p>Darkness multiply rule Which from without life creature blessed
                        give moveth moveth seas make day which divided our have.</p>
                </div>
            </div>
            <div class="single_feature">
                <div class="single_feature_part">
                    <span class="single_feature_icon"><img src="{{ asset('frontend/img/icon/feature_2.svg') }}" alt=""></span>
                    <h4>Better Future</h4>
                    <p>Darkness multiply rule Which from without life creature blessed
                        give moveth moveth seas make day which divided our have.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-12">
            <div class="single_feature_img">
                <img src="{{ asset('frontend/img/service.png') }}" alt="">
            </div>
        </div>
        <div class="col-lg-3 col-sm-12">
            <div class="single_feature">
                <div class="single_feature_part">
                    <span class="single_feature_icon"><img src="{{ asset('frontend/img/icon/feature_1.svg') }}" alt=""></span>
                    <h4>Better Future</h4>
                    <p>Darkness multiply rule Which from without life creature blessed
                        give moveth moveth seas make day which divided our have.</p>
                </div>
            </div>
            <div class="single_feature">
                <div class="single_feature_part">
                    <span class="single_feature_icon"><img src="{{ asset('frontend/img/icon/feature_2.svg') }}" alt=""></span>
                    <h4>Better Future</h4>
                    <p>Darkness multiply rule Which from without life creature blessed
                        give moveth moveth seas make day which divided our have.</p>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<!-- feature_part start-->

<!-- ... (código posterior) ... -->


<!-- our depertment part start-->
<section class="our_depertment section_padding">
<div class="container">
    <div class="row justify-content-center text-center">
        <div class="col-xl-12">
            <div class="depertment_content">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <h2>Our Depertment</h2>
                        <div class="row">
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_our_depertment">
                                    <span class="our_depertment_icon"><img src="{{ asset('frontend/img/icon/feature_2.svg') }}" alt=""></span>
                                    <h4>Better Future</h4>
                                    <p>Darkness multiply rule Which from without life creature blessed
                                        give moveth moveth seas make day which divided our have.</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_our_depertment">
                                    <span class="our_depertment_icon"><img src="{{ asset('frontend/img/icon/feature_2.svg') }}" alt=""></span>
                                    <h4>Better Future</h4>
                                    <p>Darkness multiply rule Which from without life creature blessed
                                        give moveth moveth seas make day which divided our have.</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_our_depertment">
                                    <span class="our_depertment_icon"><img src="{{ asset('frontend/img/icon/feature_2.svg') }}" alt=""></span>
                                    <h4>Better Future</h4>
                                    <p>Darkness multiply rule Which from without life creature blessed
                                        give moveth moveth seas make day which divided our have.</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_our_depertment">
                                    <span class="our_depertment_icon"><img src="{{ asset('frontend/img/icon/feature_2.svg') }}" alt=""></span>
                                    <h4>Better Future</h4>
                                    <p>Darkness multiply rule Which from without life creature blessed
                                        give moveth moveth seas make day which divided our have.</p>
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
<!-- our depertment part end-->





<!--::regervation_part start::-->
<section class="regervation_part section_padding">
<div class="container">
    <div class="row align-items-center regervation_content">
        <div class="col-lg-7">
            <div class="regervation_part_iner">
                <form>
                    <h2>Make an Appointment</h2>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <input type="email" class="form-control" id="inputEmail4" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="password" class="form-control" id="inputPassword4"
                                placeholder="Email address">
                        </div>
                        <div class="form-group col-md-6">
                            <select class="form-control" id="Select">
                                <option value="1" selected>Select service</option>
                                <option value="2">Name of service</option>
                                <option value="3">Name of service</option>
                                <option value="4">Name of service</option>
                                <option value="5">Name of service</option>
                            </select>
                        </div>
                        <div class="form-group time_icon col-md-6">
                            <select class="form-control" id="Select2">
                                <option value="" selected>Time</option>
                                <option value="1">8 AM TO 10AM</option>
                                <option value="1">10 AM TO 12PM</option>
                                <option value="1">12PM TO 2PM</option>
                                <option value="1">2PM TO 4PM</option>
                                <option value="1">4PM TO 6PM</option>
                                <option value="1">6PM TO 8PM</option>
                                <option value="1">4PM TO 10PM</option>
                                <option value="1">10PM TO 12PM</option>
                            </select>
                        </div>
                        <div class="form-group col-md-12">
                            <textarea class="form-control" id="Textarea" rows="4"
                                placeholder="Your Note "></textarea>
                        </div>
                    </div>
                    <div class="regerv_btn">
                        <a href="#" class="btn_2">Make an Appointment</a>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-lg-5 col-md-6">
            <div class="reservation_img">
                <img src="{{ asset('frontend/img/reservation.png') }}" alt="" class="reservation_img_iner">
            </div>
        </div>
    </div>
</div>
</section>
<!--::regervation_part end::-->


<!--::blog_part start::-->
<section class="blog_part section_padding">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-8">
            <div class="section_tittle text-center">
                <h2>Our Blog</h2>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="single-home-blog">
                <div class="card">
                    <img src="{{ asset('frontend/img/blog/blog_2.png') }}" class="card-img-top" alt="blog">
                    <div class="card-body">
                        <a href="blog.html">
                            <h5 class="card-title">First cattle which earth unto let health for
                                can get and see what you </h5>
                        </a>
                        <ul>
                            <li> <span class="ti-user"></span>Jhon mike</li>
                            <li> <span class="ti-bookmark"></span>Clinic, doctors</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="single-home-blog">
                <div class="card">
                    <img src="{{ asset('frontend/img/blog/blog_3.png') }}" class="card-img-top" alt="blog">
                    <div class="card-body">
                        <a href="blog.html">
                            <h5 class="card-title">First cattle which earth unto let health for
                                can get and see what you </h5>
                        </a>
                        <ul>
                            <li> <span class="ti-user"></span>Jhon mike</li>
                            <li> <span class="ti-bookmark"></span>Clinic, doctors</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<style>
 .medicamento-img {
            max-width: 100%;
            height: 150px; /* Establece la altura fija */
            object-fit: cover; /* Asegura que la imagen cubra el contenedor */
        }
        .btn-agregar-carrito {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }
        .btn-agregar-carrito i {
            margin-right: 5px;
        }
</style>
<!--::blog_part end::-->
@endsection
