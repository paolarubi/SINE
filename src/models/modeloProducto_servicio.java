package models;

import include.producto_servicio;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class modeloProducto_servicio extends conexion {


    public boolean crearProducto(producto_servicio producto_servicio) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "INSERT INTO producto_servicio " +
                    "(id_producto, producto_nombre, unidad_produccion, produccion_mensual," +
                    " costo_unitario, margen_utilidad, precio_publico, datos_empresa_id_empresa) " +
                    "VALUES (?,?,?,?,?,?,?,?)";

            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, producto_servicio.getId_producto());
            pst.setString(2, producto_servicio.getProducto_nombre());
            pst.setString(3, producto_servicio.getUnidad_produccion());
            pst.setInt(4, producto_servicio.getProduccion_mensual());
            pst.setDouble(5, producto_servicio.getCosto_unitario());
            pst.setDouble(6, producto_servicio.getMargen_utilidad());
            pst.setDouble(7, producto_servicio.getPrecio_publico());
            pst.setInt(8, producto_servicio.getDatos_empresa_id_empresa());

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

    public ArrayList<producto_servicio> obtenerProductos() {
        ArrayList<producto_servicio> productos = new ArrayList<producto_servicio>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_producto, producto_nombre, unidad_produccion," +
                    " produccion_mensual, costo_unitario, margen_utilidad, precio_publico, " +
                    "datos_empresa_id_empresa FROM producto_servicio";

            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                productos.add(new producto_servicio(rs.getInt("id_producto"),
                        rs.getString("producto_nombre"),
                        rs.getString("unidad_produccion"),
                        rs.getInt("produccion_mensual"),
                        rs.getDouble("costo_unitario"),
                        rs.getDouble("margen_utilidad"),
                        rs.getDouble("precio_publico"),
                        rs.getInt("datos_empresa_id_empresa")));

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
        return productos;
    }


     public ArrayList<producto_servicio> obtenerProducto(int idproducto) {
        ArrayList<producto_servicio> producto = new ArrayList<producto_servicio>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_producto, producto_nombre, " +
                    "unidad_produccion, produccion_mensual, costo_unitario, margen_utilidad," +
                    " precio_publico, datos_empresa_id_empresa FROM producto_servicio WHERE id_producto = ?";
            pst = getConection().prepareCall(consulta);
            pst.setInt(1, idproducto);
            rs = pst.executeQuery();
            while (rs.next()) {
                producto.add(new producto_servicio(rs.getInt("id_producto"),
                        rs.getString("producto_nombre"),
                        rs.getString("unidad_produccion"),
                        rs.getInt("produccion_mensual"),
                        rs.getDouble("costo_unitario"),
                        rs.getDouble("precio_publico"),
                        rs.getDouble("margen_utilidad"),
                        rs.getInt("datos_empresa_id_empresa")));
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
        return producto;

    }


        public boolean actualizarProducto(producto_servicio producto_servicio) {
            PreparedStatement pst = null;
            boolean flag = false;
            try {
                String consulta = "UPDATE producto_servicio SET producto_nombre = ?, unidad_produccion = ?, " +
                        "produccion_mensual = ?, costo_unitario = ?, margen_utilidad = ?, " +
                        "precio_publico = ?, datos_empresa_id_empresa = ? WHERE id_producto = ?";
                pst = getConection().prepareStatement(consulta);
                pst.setString(1, producto_servicio.getProducto_nombre());
                pst.setString(2, producto_servicio.getUnidad_produccion());
                pst.setInt(3, producto_servicio.getProduccion_mensual());
                pst.setDouble(4, producto_servicio.getCosto_unitario());
                pst.setDouble(5, producto_servicio.getMargen_utilidad());
                pst.setDouble(6, producto_servicio.getPrecio_publico());
                pst.setInt(7, producto_servicio.getDatos_empresa_id_empresa());

                pst.setInt(8, producto_servicio.getId_producto());

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
            public boolean borrarProducto(int idproducto){
                PreparedStatement pst = null;
                boolean flag = false;
                try{
                    String consulta = "DELETE FROM producto_servicio WHERE id_producto = ?";
                    pst = getConection().prepareStatement(consulta);
                    pst.setInt(1, idproducto);


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
