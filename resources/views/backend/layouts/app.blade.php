<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
@include('backend.includes.head')
<body>
    <div id="app">
        @include('backend.includes.header')
        <div class="container">
          <div class="row">
            <div class="col-md-2">
              @include('backend.includes.sidebar')
            </div>
            <div class="col-md-10">
              @yield('content')
              <br />
              <br />
              <br />
            </div>
            @include('backend.includes.footer')
          </div>
        </div>
    </div>
    <!-- Scripts -->
    <script src="{{ asset('assets/js/app.js') }}"></script>
    <script src="{{ asset('assets/tinymce/tinymce.min.js') }}"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="{{ asset('assets/js/script.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap-notify.min.js') }}"></script>
</body>
</html>
