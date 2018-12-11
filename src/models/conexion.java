package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    private String user = "paolarb";
    private String password = "c123123";
    private String hostname = "localhost";
    private String port = "3306";
    private String database = "negocio";
    private String classname = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://"+hostname+":"+port+"/"+database+"?noAccessToProcedureBodies=true";
    private Connection con;

    public conexion() {
        try {

            Class.forName(classname);
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e){
            System.err.println(e.getMessage());
        } catch (SQLException esql){
            System.err.println(esql.getMessage());
        }
    }
    public Connection getConection() { return con; }
}
