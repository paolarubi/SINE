<%@ page import="controller.ControladorEstimacion_servicios" %>
<%@ page import="include.estimacion_servicios" %>
<%@ page import="controller.ControladorProducto_servicio" %>
<%@ page import="include.producto_servicio" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%

    ControladorProducto_servicio cc = new ControladorProducto_servicio();
    ArrayList<producto_servicio> productos = new ArrayList<producto_servicio>();
    productos = cc.obtenerProductos();


    String htmlselect1 = "";
    htmlselect1 += "<select name= producto_servicio_id_producto>\n" +
            "                <option value=\"\" selected disabled>Elige un producto" +
            "</option>\n";
    for(int a=0; a<productos.size();a++){
        htmlselect1 += "<option value=\""+productos.get(a).getId_producto()+"\">"+productos.get(a).getProducto_nombre()+"</option>\n";
    }
    htmlselect1 += "            </select>";
%>

<%
    int id_suscripcion = 0;
    try {

        id_suscripcion = Integer.parseInt(request.getParameter("id_suscripcion"));
    }catch (NumberFormatException ex) {
    }
        ControladorEstimacion_servicios ccc = new ControladorEstimacion_servicios();
        ArrayList<estimacion_servicios> estima = new ArrayList<estimacion_servicios>();
        estima = ccc.obtenerEstima(id_suscripcion);

%>

<div class="container">
    <form class="col s12" action="/modificarEstimacion.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar estimacion</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_suscripcion" name="id_suscripcion" type="text" readonly="readonly" value="<% out.print(estima.get(0).getId_suscripcion()); %>">
                <label for="id_suscripcion" class="center-align">ID suscripcion</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="unidad_produccion" name="unidad_produccion" type="text" value="<% out.print(estima.get(0).getUnidad_produccion()); %>">
                <label for="unidad_produccion" class="center-align">unidad produccion</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="total_suscripciones" name="total_suscripciones" type="text" value="<% out.print(estima.get(0).getTotal_suscripciones()); %>">
                <label for="total_suscripciones" class="center-align">Total de suscripciones</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="total_mensual" name="total_mensual" type="text"  value="<% out.print(estima.get(0).getTotal_mensual()); %>">
                <label for="total_mensual" class="center-align">total mensual</label>
            </div>
            <div class="col s2">

            </div>
        </div>


        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">

                <%
                    out.print(htmlselect1);
                %>

            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" href='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="estimaciones.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
