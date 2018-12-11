<%@ page import="controller.ControladorProducto_servicio" %>
<%@ page import="include.producto_servicio" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controller.ControladorEstimacion_servicios" %>
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


<div class="container">
    <form class="col s12" action="/crearEstimacion.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar una nueva estimacion</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_suscripcion" name="id_suscripcion" type="text" value="">
                <label for="id_suscripcion" class="center-align">ID suscripcion</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="unidad_produccion" name="unidad_produccion" type="text" value="">
                <label for="unidad_produccion" class="center-align">Unidad de produccion</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="total_suscripciones" name="total_suscripciones" type="text" value="">
                <label for="total_suscripciones" class="center-align">Total de suscripciones</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="total_mensual" name="total_mensual" type="text" value="">
                <label for="total_mensual" class="center-align">El total mensual</label>
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

        <div class="input-field col s8">
            <input type="submit" value="Insertar" href='return(verif(this.form)); MM_validateForm()' class="btn col s6">
            <a class="btn col s6" href="estimaciones.jsp">Regresar</a>
        </div>
        <div class="col s2">

        </div>

    </form>
</div>



<jsp:include page='views/footer.jsp'></jsp:include>