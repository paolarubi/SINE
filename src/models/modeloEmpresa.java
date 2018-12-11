package models;

import include.datos_empresa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class modeloEmpresa extends conexion {

    public ArrayList<datos_empresa> obtenerDatosEmpresa() {
        ArrayList<datos_empresa> datos = new ArrayList<datos_empresa>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT id_empresa, nombre_empresa FROM datos_empresa";

            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                datos.add(new datos_empresa(rs.getInt("id_empresa"),

                        rs.getString("nombre_empresa")));

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
        return datos;
    }
}

