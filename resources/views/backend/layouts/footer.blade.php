<footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{asset('backend/assets/plugins/jquery/jquery.min.js')  }}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{asset('backend/assets/plugins/jquery-ui/jquery-ui.min.js')  }}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{asset('backend/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')  }}"></script>
<!-- ChartJS -->
<script src="{{asset('backend/assets/plugins/chart.js/Chart.min.js')  }}"></script>
<!-- Sparkline -->
<script src="{{asset('backend/assets/plugins/sparklines/sparkline.js')  }}"></script>
<!-- JQVMap -->
<script src="{{asset('backend/assets/plugins/jqvmap/jquery.vmap.min.js')  }}"></script>
<script src="{{asset('backend/assets/plugins/jqvmap/maps/jquery.vmap.usa.js')  }}"></script>
<!-- jQuery Knob Chart -->
<script src="{{asset('backend/assets/plugins/jquery-knob/jquery.knob.min.js')  }}"></script>
<!-- daterangepicker -->
<script src="{{asset('backend/assets/plugins/moment/moment.min.js')  }}"></script>
<script src="{{asset('backend/assets/"plugins/daterangepicker/daterangepicker.js')  }}"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="{{asset('backend/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')  }}"></script>
<!-- Summernote -->
<script src="{{asset('backend/assets/plugins/summernote/summernote-bs4.min.js')  }}"></script>
<!-- overlayScrollbars -->
<script src="{{asset('backend/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')  }}"></script>
<!-- AdminLTE App -->
<script src="{{asset('backend/assets/dist/js/adminlte.js')  }}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('backend/assets/dist/js/demo.js')  }}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('backend/assets/dist/js/pages/dashboard.js')  }}"></script>

<script src="{{asset('backend/assets/plugins/jquery/jquery.min.js')  }}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('backend/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')  }}"></script>
<!-- bs-custom-file-input -->
<script src="{{asset('backend/assets/plugins/bs-custom-file-input/bs-custom-file-input.min.js')  }}"></script>
<!-- AdminLTE App -->
<script src="{{asset('backend/assets/dist/js/adminlte.min.js')  }}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('backend/assets/dist/js/demo.js')  }}"></script>
<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();
});
