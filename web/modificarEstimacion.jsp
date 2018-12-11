
<%@ page import="include.estimacion_servicios" %>
<%@ page import="controller.ControladorEstimacion_servicios" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int id_suscripcion = 0;

    try {

        id_suscripcion = Integer.parseInt(request.getParameter("id_suscripcion"));

    }catch (NumberFormatException e){

    }
    String unidad_produccion = request.getParameter("unidad_produccion");

    int total_suscripciones = 0;
    try {

        total_suscripciones = Integer.parseInt(request.getParameter("total_suscripciones"));

    }catch (NumberFormatException e){

    }

    double total_mensual = 0;

    try {

        total_mensual  = Double.parseDouble(request.getParameter("total_mensual"));

    }catch (NullPointerException e){

    }

    int producto_servicio_id_producto = 0;

    try {

        producto_servicio_id_producto = Integer.parseInt(request.getParameter("producto_servicio_id_producto"));

    }catch (NumberFormatException e){

    }

    estimacion_servicios nuevaEstimacion = new estimacion_servicios (id_suscripcion, unidad_produccion, total_suscripciones, total_mensual,  producto_servicio_id_producto);

    ControladorEstimacion_servicios ccc = new ControladorEstimacion_servicios();
    if(ccc.actualizarEstimacion(nuevaEstimacion)) {
        response.sendRedirect("estimaciones.jsp");
    } else {
        response.sendRedirect("m_estimacion.jsp?clave=" + id_suscripcion);
    }
%>