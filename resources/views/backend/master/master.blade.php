<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>@yield('title')</title>
	<base href="{{asset('')}}">
	<!-- css -->
	<link href="public/backend/css/bootstrap.min.css" rel="stylesheet">
	<link href="public/backend/css/datepicker3.css" rel="stylesheet">
	<link href="public/backend/css/styles.css" rel="stylesheet">
	<!--Icons-->
	<script src="public/backend/js/lumino.glyphs.js"></script>
	<link rel="stylesheet" href="public/backend/Awesome/css/all.css">
</head>
<body>

        @include('backend.master.header')
        @include('backend.master.sidebar')
        @yield('content')
        
	<!-- javascript -->
	<script src="public/backend/js/jquery-1.11.1.min.js"></script>
	<script src="public/backend/js/bootstrap.min.js"></script>
	<script src="public/backend/js/chart.min.js"></script>
	<script src="public/backend/js/easypiechart.js"></script>
	<script src="public/backend/js/easypiechart-data.js"></script>
	<script src="public/backend/js/bootstrap-datepicker.js"></script>
	@yield('data')
	@yield('script_product')
	@yield('script_attr')
	@yield('script_variant')
	@yield('script_list')
</body>

</html>