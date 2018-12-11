package include;

public class producto_servicio {

    private int id_producto;
    private String producto_nombre;
    private String unidad_produccion;
    private int produccion_mensual;
    private double costo_unitario;
    private double margen_utilidad;
    private double precio_publico;
    private int datos_empresa_id_empresa;

    public producto_servicio(int id_producto, String producto_nombre, String unidad_produccion,
                             int produccion_mensual , double costo_unitario, double margen_utilidad,
                             double precio_publico, int datos_empresa_id_empresa)
    {
        this.id_producto = id_producto;
        this.producto_nombre = producto_nombre;
        this.unidad_produccion = unidad_produccion;
        this.produccion_mensual = produccion_mensual;
        this.costo_unitario = costo_unitario;
        this.margen_utilidad = margen_utilidad;
        this.precio_publico = precio_publico;
        this.datos_empresa_id_empresa = datos_empresa_id_empresa;

    }

        public int getId_producto() {
            return id_producto;
        }

        public void setId_producto(int id_suscripcion) {
            this.id_producto = id_producto;
        }

        public String getProducto_nombre() {
            return producto_nombre;
        }

        public void setProducto_nombre(String producto_nombre) {
            this.producto_nombre = producto_nombre;
        }


        public String getUnidad_produccion(){
            return unidad_produccion;
        }

        public void setUnidad_produccions(String unidad_produccion) {
            this.unidad_produccion =  unidad_produccion;
        }

        public int getProduccion_mensual() {
            return produccion_mensual;
        }

        public void setProduccion_mensual(int produccion_mensuall) {
            this.produccion_mensual =  produccion_mensuall;
        }

        public Double getCosto_unitario() {
            return costo_unitario;
        }

        public void setCosto_unitario(Double costo_unitario) {
            this.costo_unitario =  costo_unitario;
        }

        public Double getMargen_utilidad() {
        return margen_utilidad;
        }

        public void setMargen_utilidad(Double margen_utilidad) {
        this.margen_utilidad =  margen_utilidad;
        }

        public Double getPrecio_publico() {
            return precio_publico;
        }

        public void setPrecio_publico(Double precio_publico) {
        this.precio_publico =  precio_publico;
            }

        public int getDatos_empresa_id_empresa() {
             return datos_empresa_id_empresa;
         }

        public void setDatos_empresa_id_empresa(int datos_empresa_id_empresa) {
        this.datos_empresa_id_empresa =  datos_empresa_id_empresa;
    }
}


