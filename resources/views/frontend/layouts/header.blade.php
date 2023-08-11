<header class="main_menu home_menu">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="index.html">
                        <img src="{{ asset('frontend/img/logo.jpg') }}" alt="logo" class="logo-img">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse main-menu-item justify-content-center"
                        id="navbarSupportedContent">
                        <ul class="navbar-nav align-items-center">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">Acerca de</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Doctor.html">Medicamentos</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Blog</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                    <!-- Opciones del menú desplegable aquí -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contacto</a>
                            </li>
                        </ul>
                    </div>
                    <a class="btn_2 d-none d-lg-block" href="#">Comprar</a>
                </nav>
            </div>
        </div>
    </div>
</header>
<style>
    .logo-img {
        max-width: 300px; /* Ajusta el tamaño del logo según tus preferencias */
        margin-right: 20px; /* Espacio entre el logo y el menú */
    }
</style>
