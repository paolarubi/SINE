
<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.estimacion_servicios" %>
<%@ page import="controller.ControladorEstimacion_servicios" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Estimaciones</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_estimacion.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped">
                <thead>
                <tr>
                    <th>Clave del producto</th>
                    <th>Nombre</th>
                    <th>Unidad de produccion</th>
                    <th>Produccion mensual</th>
                    <th>Costo unitario</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    ControladorEstimacion_servicios cc = new ControladorEstimacion_servicios();
                    int contador = 0;
                    ArrayList<estimacion_servicios> estimaciones = new ArrayList<estimacion_servicios>();
                    estimaciones = cc.obtenerEstimaciones();
                    if(estimaciones.size() > 0){
                        for(int a=0; a<estimaciones.size();a++){
                            htmlcode += "<tr><td>" + estimaciones.get(a).getId_suscripcion()
                                    + "</td><td>" + estimaciones.get(a).getUnidad_produccion()
                                    + "</td><td>" + estimaciones.get(a).getTotal_suscripciones()
                                    + "</td><td>" + estimaciones.get(a).getTotal_mensual()
                                    + "</td><td>" + estimaciones.get(a).getProducto_servicio_id_producto()
                                    + "</td><td>" +
                                    "<a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_estimacion.jsp?id_suscripcion="+estimaciones.get(a).getId_suscripcion()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn pink\" onclick=\"delete_estimacion("+estimaciones.get(a).getId_suscripcion()+")\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen NADA</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>