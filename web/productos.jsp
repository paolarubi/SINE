
<jsp:include page='views/header.jsp'></jsp:include>
<%@ page import="include.producto_servicio" %>
<%@ page import="controller.ControladorProducto_servicio" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Productos</h3>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="a_producto.jsp">Nuevo</a>
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
                    <th>Margen de utilidad</th>
                    <th>Precio publico</th>
                    <th>Empresa id</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    String htmlcode = "<tbody>";
                    ControladorProducto_servicio cc = new ControladorProducto_servicio();
                    int contador = 0;
                    ArrayList<producto_servicio> Productos = new ArrayList<producto_servicio>();
                    Productos = cc.obtenerProductos();
                    if(Productos.size() > 0){
                        for(int a=0; a<Productos.size();a++){
                            htmlcode += "<tr><td>" + Productos.get(a).getId_producto()
                                    + "</td><td>" + Productos.get(a).getProducto_nombre()
                                    + "</td><td>" + Productos.get(a).getUnidad_produccion()
                                    + "</td><td>" + Productos.get(a).getProduccion_mensual()
                                    + "</td><td>" + Productos.get(a).getCosto_unitario()
                                    + "</td><td>" + Productos.get(a).getMargen_utilidad()
                                    + "</td><td>" + Productos.get(a).getPrecio_publico()
                                    + "</td><td>" + Productos.get(a).getDatos_empresa_id_empresa()
                                    + "</td><td>" +
                                    "<a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                                    + "<a class=\"btn blue\" href=\"m_producto.jsp?id_producto="+Productos.get(a).getId_producto()+"\"><i class=\"material-icons\">create</i></a>"
                                    + "<a class=\"btn pink\" onclick=\"delete_producto("+Productos.get(a).getId_producto()+")\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen productos</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>