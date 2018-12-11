
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>SIMULADOR DE NEGOCIOS - ITCA</title>

    <link rel="stylesheet" href="/css/tooltip.css" type="text/css">
    <link rel="stylesheet" href="/css/horizontal-menu/materialize.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery.dataTables.min.css" type="text/css">
    <link rel="stylesheet" href="/css/jquery.dataTables_themeroller.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/sweetalert.css" type="text/css">
    <!-- <link rel="stylesheet" href="css/ghpages-materialize.css" type="text/css" media="screen,projection"> -->
    <script type="text/javascript" src="js/sweetalert.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    <script type="text/javascript" src="js/alertas.js"></script>

    <script>

        function delete_producto(id_to_delete)
        {
            var confirmation = confirm(String.fromCharCode(191)+'Est\u00E1 seguro de que desea eliminar el producto con ID '+ id_to_delete);

            if(confirmation)
            {
                window.location = "borrarProducto.jsp?id_producto="+id_to_delete;
            }
        }

    </script>

    <script>

        function delete_estimacion(id_to_delete)
        {
            var confirmation = confirm(String.fromCharCode(191)+'Est\u00E1 seguro de que desea eliminar la estimacion de servicio con ID '+ id_to_delete);

            if(confirmation)
            {
                window.location = "borrarEstimacion.jsp?id_suscripcion="+id_to_delete;
            }
        }

    </script>

</head>
<body>
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/js/materialize.js"></script>
<script type="text/javascript" src="/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/scrollspy.js"></script>
<!-- Start Page Loading -->
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<div class="row">

    <jsp:include page='menu.jsp'></jsp:include>


</div>
<div class="container">
</div>

<!-- START CONTENT -->