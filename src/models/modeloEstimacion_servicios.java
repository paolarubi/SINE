package models;

import include.estimacion_servicios;
import include.producto_servicio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloEstimacion_servicios extends conexion {


    public boolean crearEstima(estimacion_servicios estimacion_servicios) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "INSERT INTO estimacion_servicios (id_suscripcion, unidad_produccion, total_suscripciones, total_mensual, producto_servicio_id_producto) VALUES (?,?,?,?,?)";

            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, estimacion_servicios.getId_suscripcion());
            pst.setString(2, estimacion_servicios.getUnidad_produccion());
            pst.setInt(3, estimacion_servicios.getTotal_suscripciones());
            pst.setDouble(4, estimacion_servicios.getTotal_mensual());
            pst.setInt(5, estimacion_servicios.getProducto_servicio_id_producto());

            if (pst.executeUpdate() == 1) {

                flag = true;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {

            }
        }
        return flag;
    }

    public ArrayList<estimacion_servicios> obtenerEstimaciones() {
        ArrayList<estimacion_servicios> estimas = new ArrayList<estimacion_servicios>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_suscripcion, unidad_produccion, total_suscripciones," +
                    " total_mensual, producto_servicio_id_producto FROM estimacion_servicios";

            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                estimas.add(new estimacion_servicios(rs.getInt("id_suscripcion"),
                        rs.getString("unidad_produccion"),
                        rs.getInt("total_suscripciones"),
                        rs.getDouble("total_mensual"),
                        rs.getInt("producto_servicio_id_producto")));

            }
        } catch (Exception e) {

        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {

            }
        }
        return estimas;
    }


    public ArrayList<estimacion_servicios> obtenerEstima(int idestima) {
        ArrayList<estimacion_servicios> estima = new ArrayList<estimacion_servicios>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_suscripcion, unidad_produccion, " +
                    "total_suscripciones,total_mensual, producto_servicio_id_producto FROM estimacion_servicios WHERE id_suscripcion = ?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, idestima);
            rs = pst.executeQuery();
            while (rs.next()) {
                estima.add(new estimacion_servicios(rs.getInt("id_suscripcion"),
                        rs.getString("unidad_produccion"),
                        rs.getInt("total_suscripciones"),
                        rs.getDouble("total_mensual"),
                        rs.getInt("producto_servicio_id_producto")));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return estima;

    }


    public boolean actualizarEstimacion(estimacion_servicios estimacion_servicios) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "UPDATE estimacion_servicios SET unidad_produccion = ?, total_suscripciones = ?, " +
                    "total_mensual = ?, producto_servicio_id_producto = ? WHERE id_suscripcion = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setString(1, estimacion_servicios.getUnidad_produccion());
            pst.setInt(2, estimacion_servicios.getTotal_suscripciones());
            pst.setDouble(3, estimacion_servicios.getTotal_mensual());
            pst.setInt(4, estimacion_servicios.getProducto_servicio_id_producto());

            pst.setInt(5, estimacion_servicios.getId_suscripcion());

            if (pst.executeUpdate() == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception a) {
                System.out.println(a.getMessage());
            }
        }
        return flag;

    }
    public boolean borrarEstimacion(int idestima){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "DELETE FROM estimacion_servicios WHERE id_suscripcion = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, idestima);


            if(pst.executeUpdate() == 1){
                flag = true;
            }
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return flag;
    }
}
