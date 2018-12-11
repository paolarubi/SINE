package include;

public class estimacion_servicios {

    private int id_suscripcion;
    private String unidad_produccion;
    private int total_suscripciones;
    private double total_mensual;
    private int producto_servicio_id_producto;

    public estimacion_servicios(int id_suscripcion, String unidad_produccion, int total_suscripciones, double total_mensual, int producto_servicio_id_producto) {
        this.id_suscripcion = id_suscripcion;
        this.unidad_produccion = unidad_produccion;
        this.total_suscripciones = total_suscripciones;
        this.total_mensual = total_mensual;
        this.producto_servicio_id_producto = producto_servicio_id_producto;
    }

    public int getId_suscripcion() {
        return id_suscripcion;
    }

    public void setId_suscripcion(int id_suscripcion) {
        this.id_suscripcion = id_suscripcion;
    }

    public String getUnidad_produccion() {
        return unidad_produccion;
    }

    public void setUnidad_produccion(String unidad_produccion) {
        this.unidad_produccion = unidad_produccion;
    }


    public int getTotal_suscripciones(){
        return total_suscripciones;
    }

    public void setTotal_suscripciones(int total_suscripciones) {
        this.total_suscripciones =  total_suscripciones;
    }

    public double getTotal_mensual() {
        return total_mensual;
    }

    public void setTotal_mensual(double total_mensual) {
        this.total_mensual =  total_mensual;
    }

    public int getProducto_servicio_id_producto() {
        return producto_servicio_id_producto;
    }

    public void setProducto_servicio_id_producto(int producto_servicio_id_producto) {
        this.producto_servicio_id_producto =  producto_servicio_id_producto;
    }

}

