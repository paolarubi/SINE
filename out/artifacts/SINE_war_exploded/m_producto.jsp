<%@ page import="controller.ControladorProducto_servicio" %>
<%@ page import="include.producto_servicio" %>
<%@ page import="controller.ControladorEmpresa" %>
<%@ page import="include.datos_empresa" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page='views/header.jsp'></jsp:include>
<%


    ControladorEmpresa ccc = new ControladorEmpresa();
    ArrayList<datos_empresa> datos = new ArrayList<datos_empresa>();
    datos = ccc.obtenerDatosEmpresa();


    String htmlselect = "";
    htmlselect += "<select name= datos_empresa_id_empresa>\n" +
            "                <option value=\"\" selected disabled>Elige una empresa" +
            "</option>\n";
    for(int a=0; a<datos.size();a++){
        htmlselect += "<option value=\""+ datos.get(a).getId_empresa()+"\">"+datos.get(a).getNombre_empresa()+"</option>\n";
    }
    htmlselect += "            </select>";
%>

<%
    int id_producto = 0;
    try {

        id_producto = Integer.parseInt(request.getParameter("id_producto"));
    }catch (NumberFormatException ex) {
    }
        ControladorProducto_servicio cc = new ControladorProducto_servicio();
        ArrayList<producto_servicio> producto = new ArrayList<producto_servicio>();
        producto = cc.obtenerProducto(id_producto);

%>

<div class="container">
    <form class="col s12" action="/modificarProducto.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Modificar producto</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="id_producto" name="id_producto" type="text" readonly="readonly" value="<% out.print(producto.get(0).getId_producto()); %>">
                <label for="id_producto" class="center-align">ID producto</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="producto_nombre" name="producto_nombre" type="text" value="<% out.print(producto.get(0).getProducto_nombre()); %>">
                <label for="producto_nombre" class="center-align">Producto</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="unidad_produccion" name="unidad_produccion" type="text" value="<% out.print(producto.get(0).getUnidad_produccion()); %>">
                <label for="unidad_produccion" class="center-align">Nivel Escolar</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="produccion_mensual" name="produccion_mensual" type="text"  value="<% out.print(producto.get(0).getProduccion_mensual()); %>">
                <label for="produccion_mensual" class="center-align">Produccion mensual</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="Costo_unitario" name="costo_unitario" type="text" value="<% out.print(producto.get(0).getCosto_unitario()); %>" >
                <label for="costo_unitario" class="center-align">Costo_unitario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="margen_utilidad" name="margen_utilidad" type="text" value="<% out.print(producto.get(0).getMargen_utilidad()); %>">
                <label for="margen_utilidad" class="center-align">margen utilidad</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="precio_publico" name="precio_publico" type="text" value="<% out.print(producto.get(0).getPrecio_publico()); %>">
                <label for="precio_publico" class="center-align">precio publico</label>
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

        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" href='return(verif(this.form)); MM_validateForm()' class="btn col s6">
                <a class="btn col s6" href="productos.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>
