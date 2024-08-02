<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- dynamic content -->
     @if(session()->has('error'))
     <div class="alert alert-danger">
        {{session()->get('error')}}
     </div>
     @endif
     @yield('content')
</body>
</html>