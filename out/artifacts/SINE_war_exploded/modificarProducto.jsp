<%@ page import="include.producto_servicio" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="controller.ControladorProducto_servicio" %><%

    int id_producto = 0;

    try {

        id_producto = Integer.parseInt(request.getParameter("id_producto"));

    }catch (NumberFormatException e){

    }
    String producto_nombre = request.getParameter("producto_nombre");
    String unidad_produccion = request.getParameter("unidad_produccion");
    int produccion_mensual = 0;
    try {

        produccion_mensual = Integer.parseInt(request.getParameter("produccion_mensual"));

    }catch (NumberFormatException e){

    }

    double costo_unitario = 0;
    double margen_utilidad = 0;
    double precio_publico = 0;

    try {

        costo_unitario  = Double.parseDouble(request.getParameter("costo_unitario"));
        margen_utilidad = Double.parseDouble(request.getParameter("margen_utilidad"));
        precio_publico  = Double.parseDouble(request.getParameter("precio_publico"));

    }catch (NullPointerException e){

    }

    int datos_empresa_id_empresa = 0;

    try {

        datos_empresa_id_empresa = Integer.parseInt(request.getParameter("datos_empresa_id_empresa"));

    }catch (NumberFormatException e){

    }

    producto_servicio nuevoProducto = new producto_servicio (id_producto, producto_nombre, unidad_produccion, produccion_mensual, costo_unitario, margen_utilidad, precio_publico, datos_empresa_id_empresa);


    ControladorProducto_servicio cc = new ControladorProducto_servicio();
    if(cc.actualizarProducto(nuevoProducto)) {
        response.sendRedirect("productos.jsp");
    } else {
        response.sendRedirect("m_producto.jsp?clave=" + id_producto);
    }
%>