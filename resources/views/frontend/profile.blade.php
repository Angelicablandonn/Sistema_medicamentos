@extends('frontend.layouts.master')

@section('content')
<style>
    /* Estilos generales para la vista de perfil */
    .profile-container {
        padding: 50px 0;
    }

    .profile-card {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 20px;
        margin-bottom: 20px;
        display: flex;
        align-items: center;
    }

    .profile-icon {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        background-color: #d64400;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        font-size: 36px;
    }

    .profile-info {
        padding-left: 20px;
    }

    .profile-options {
        list-style: none;
        padding: 0;
    }

    .profile-options button {
        background-color: #f8f9fa;
        border: none;
        padding: 10px 15px;
        margin-bottom: 5px;
        width: 100%;
        text-align: left;
    }

    .profile-options button:hover {
        background-color: #d64400;
        color: #fff;
    }

    .profile-menu {
        display: none;
    }

    .profile-menu.active {
        display: block;
    }

    /* Estilos específicos para los menús */
    .profile-menu table {
        width: 100%;
        border-collapse: collapse;
    }

    .profile-menu th,
    .profile-menu td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
    }

    .profile-menu th {
        background-color: #f8f9fa;
    }

    .profile-menu tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>

<div class="col-lg-12">
    @include('backend/layouts/notificacion')
</div>

@auth
<div class="profile-container">
    <div class="row py-5 my-5 mx-4">
        <div class="col-md-6 profile-card">
            <div class="profile-icon">
                <i class="fas fa-user"></i>
            </div>
            <div class="profile-info">
                <h5>Nombre Completo: {{ Auth()->user()->name }}</h5>
                <p>Correo Electronico: {{ Auth()->user()->email }}</p>
            </div>
        </div>
        <div class="col-md-6 profile-card">
            <h5>Opciones:</h5>
            <ul class="profile-options">
                <li><button onclick="showMenu('perfil')">Ver Pedidos</button></li>
                <li><button onclick="showMenu('password')">Cambiar Contraseña</button></li>
                <li><button onclick="showMenu('config')">Configurar Cuenta</button></li>
                <li><button onclick="showMenu('logout')">Cerrar Sesión</button></li>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col p-3 d-flex justify-content-center">

            <div id="perfilMenu" class="profile-menu">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Tus Pedidos</h3>
                    </div>
                    <div class="card-body">
                        <table>
                            <thead>
                                <tr>
                                    <th>Dirección de Envío</th>
                                    <th>Productos</th>
                                    <th>Estado</th>
                                    <th>Total</th>
                                    <th>Fecha de Compra</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($pedidos as $pedido)
                                <tr>
                                    <td>{{ $pedido->direccion }}</td>
                                    <td>{{ $pedido->productos }}</td>
                                    <td>{{ $pedido->status }}</td>
                                    <td>{{ $pedido->total }}</td>
                                    <td>{{ $pedido->created_at }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div id="passwordMenu" class="profile-menu">
                <h6>Cambiar Contraseña</h6>
                <form>
                    <!-- Formulario para cambiar contraseña -->
                </form>
            </div>

            <div id="configMenu" class="profile-menu">
                <h6>Perfil del Usuario</h6>
                <p>Nombre: {{ Auth()->user()->name }}</p>
                <p>Correo electrónico: {{ Auth()->user()->email }}</p>
            </div>

            <div id="logoutMenu" class="profile-menu">
                <h4 class="d-flex justify-content-center">Cerrar Sesión</h4>
                <p>¿Estás seguro de que deseas cerrar sesión?</p>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-flex justify-content-center">
                    @csrf
                    <button type="submit" class="btn btn-danger my-2">Cerrar Sesión</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function showMenu(menuId) {
        // Ocultar todos los menús
        const menus = document.querySelectorAll('.profile-menu');
        menus.forEach(menu => {
            menu.classList.remove('active');
        });

        // Mostrar el menú seleccionado
        const selectedMenu = document.getElementById(menuId + 'Menu');
        selectedMenu.classList.add('active');
    }
</script>
@endauth
@endsection
