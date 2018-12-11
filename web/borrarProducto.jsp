<%@ page import="controller.ControladorProducto_servicio" %>
<%
    int id_producto = 0;
    try {

        id_producto = Integer.parseInt(request.getParameter("id_producto"));
    }catch (NumberFormatException ex){

    }
    ControladorProducto_servicio cc = new ControladorProducto_servicio();
    if(cc.borrarProducto(id_producto)){
        response.sendRedirect("productos.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>