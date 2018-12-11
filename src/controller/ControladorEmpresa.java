package controller;

import include.datos_empresa;
import include.producto_servicio;
import models.modeloEmpresa;

import java.util.ArrayList;

public class ControladorEmpresa {


    public ArrayList<datos_empresa> obtenerDatosEmpresa() {
        modeloEmpresa datos = new modeloEmpresa();
        return datos.obtenerDatosEmpresa();
    }


    public static void main(String[] args) {

        ControladorEmpresa cc = new ControladorEmpresa();



        ArrayList<datos_empresa> datos = new ArrayList<>();
        datos = cc.obtenerDatosEmpresa();
        for (int a = 0; a < datos.size(); a++) {
            System.out.println();
            System.out.println("Id: " + datos.get(a).getId_empresa());
            System.out.println("Nombre " + datos.get(a).getNombre_empresa());
            System.out.println();


        }

    }
}
