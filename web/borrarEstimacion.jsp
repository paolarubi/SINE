<%@ page import="controller.ControladorEstimacion_servicios" %>
<%
    int id_suscripcion = 0;
    try {

        id_suscripcion = Integer.parseInt(request.getParameter("id_suscripcion"));
    }catch (NumberFormatException ex){

    }
    ControladorEstimacion_servicios cc = new ControladorEstimacion_servicios();
    if(cc.borrarEstimacion(id_suscripcion)){
        response.sendRedirect("estimaciones.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>