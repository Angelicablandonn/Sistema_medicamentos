<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{asset('backend/assets/dist/img/user2-160x160.jpg')  }}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">Administrador</a>
      </div>
    </div>

    <!-- SidebarSearch Form -->
    <div class="form-inline">
      <div class="input-group" data-widget="sidebar-search">
        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-sidebar">
            <i class="fas fa-search fa-fw"></i>
          </button>
        </div>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->



        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-edit"></i>
            <p>
              Usuarios
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{{route('users.index')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Listar Usuarios</p>
              </a>
            </li>
            <li class="nav-item">
                <a href="{{route('users.create')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Agregar Usuarios</p>
              </a>
            </li>

          </ul>
        </li>

        <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Medicamentos
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{route('medicamento.index')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Listar Medicamentos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('medicamento.create')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Agregar Medicamentos</p>
                </a>
              </li>


            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Pedidos
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{route('pedidos.index')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Listar pedidos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('pedidos.create')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Crear pedidos</p>
                </a>
              </li>

            </ul>
          </li>


      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
