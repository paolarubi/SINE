package controller;

import include.estimacion_servicios;


import models.modeloEstimacion_servicios;



import java.util.ArrayList;


public class ControladorEstimacion_servicios {

    public boolean crearEstima (estimacion_servicios estimacion_servicios) {
        modeloEstimacion_servicios cestima = new modeloEstimacion_servicios();
        return  cestima.crearEstima(estimacion_servicios);
    }

    public ArrayList<estimacion_servicios> obtenerEstima(int idestima) {
        modeloEstimacion_servicios estima = new modeloEstimacion_servicios();
        return estima.obtenerEstima(idestima);
    }

    public ArrayList<estimacion_servicios> obtenerEstimaciones() {
        modeloEstimacion_servicios estimaciones = new modeloEstimacion_servicios();
        return estimaciones.obtenerEstimaciones();
    }

    public boolean actualizarEstimacion(estimacion_servicios estimacion_servicios){
        modeloEstimacion_servicios estima1 = new modeloEstimacion_servicios();
        return estima1.actualizarEstimacion(estimacion_servicios);
    }

    public boolean borrarEstimacion (int idestima){
        modeloEstimacion_servicios estima1 = new modeloEstimacion_servicios();
        return estima1.borrarEstimacion(idestima);
    }

    public static void main(String[] args) {

        ControladorEstimacion_servicios cc = new ControladorEstimacion_servicios();
        //System.out.println(cc.crearEstima(new estimacion_servicios(3, "3", 3,4,3)));


        ArrayList<estimacion_servicios> estima = new ArrayList<>();
        estima = cc.obtenerEstima(3);
        for (int b = 0; b < estima.size(); b++) {
            System.out.println("Id produccion " + estima.get(b).getId_suscripcion());
            System.out.println("Unidad produccion: " + estima.get(b).getUnidad_produccion());
            System.out.println("Total de suscripciones: " + estima.get(b).getTotal_suscripciones());
            System.out.println("Total_mensual: " + estima.get(b).getTotal_mensual());
            System.out.println("Producto servicio: " + estima.get(b).getProducto_servicio_id_producto());

        }


        ArrayList<estimacion_servicios> estimaciones = new ArrayList<>();
        estimaciones = cc.obtenerEstimaciones();
        for (int a = 0; a < estimaciones.size(); a++) {
            System.out.println();
            System.out.println("Id: " + estimaciones.get(a).getId_suscripcion());
            System.out.println("Nombre " + estimaciones.get(a).getUnidad_produccion());
            System.out.println("Total suscripciones: " + estimaciones.get(a).getTotal_suscripciones());
            System.out.println("Total_mensual: " + estimaciones.get(a).getTotal_mensual());
            System.out.println("Producto servicio: " + estimaciones.get(a).getProducto_servicio_id_producto());

            System.out.println();

        }

        //Modificar un elemento
      //   System.out.println(cc.actualizarEstimacion(new estimacion_servicios(1, "111", 12,2.2, 2)));


        //Modificar un elemento
        // System.out.println(cc.borrarEstimacion( 1));
   }
   }