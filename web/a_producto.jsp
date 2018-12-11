
<%@ page import="controller.ControladorEmpresa" %>
<%@ page import="include.datos_empresa" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controller.ControladorProducto_servicio" %>
<jsp:include page='views/header.jsp'></jsp:include>


<%

    ControladorEmpresa cc = new ControladorEmpresa();
    ArrayList<datos_empresa> datos = new ArrayList<datos_empresa>();
    datos = cc.obtenerDatosEmpresa();


    String htmlselect = "";
    htmlselect += "<select name= datos_empresa_id_empresa>\n" +
            "                <option value=\"\" selected disabled>Elige una empresa" +
            "</option>\n";
    for(int a=0; a<datos.size();a++){
        htmlselect += "<option value=\""+datos.get(a).getId_empresa()+"\">"+datos.get(a).getNombre_empresa()+"</option>\n";
    }
    htmlselect += "            </select>";

%>


<div class="container">
    <form class="col s12" action="/crearProductoServicio.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar un nuevo producto</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_producto" name="id_producto" type="text" value="">
                <label for="id_producto" class="center-align">ID producto</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="producto_nombre" name="producto_nombre" type="text" value="">
                <label for="producto_nombre" class="center-align">producto nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="unidad_produccion" name="unidad_produccion" type="text" value="">
                <label for="unidad_produccion" class="center-align">Unidad produccion</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="produccion_mensual" name="produccion_mensual" type="text" value="">
                <label for="produccion_mensual" class="center-align">Produccion mensual</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="costo_unitario" name="costo_unitario" type="text" value="" >
                <label for="costo_unitario" class="center-align">Costo unitario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="margen_utilidad" name="margen_utilidad" type="text" value="">
                <label for="margen_utilidad" class="center-align">Margen de utilidad</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="precio_publico" name="precio_publico" type="text" value="">
                <label for="precio_publico" class="center-align">Precio publico</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <%
                    out.print(htmlselect);
                %>
            </div>
            <div class="col s2">

            </div>
        </div>

            <div class="input-field col s8">
                <input type="submit" value="Insertar" href='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="productos.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>

    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>