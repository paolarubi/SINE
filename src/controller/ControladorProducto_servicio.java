package controller;

import include.producto_servicio;
import models.modeloProducto_servicio;

import java.util.ArrayList;

public class ControladorProducto_servicio {

    public boolean crearProducto(producto_servicio producto_servicio) {
        modeloProducto_servicio producto1 = new modeloProducto_servicio();
        return producto1.crearProducto(producto_servicio);
    }

    public ArrayList<producto_servicio> obtenerProducto(int idproducto) {
       modeloProducto_servicio producto = new modeloProducto_servicio();
        return producto.obtenerProducto(idproducto);
    }

    public ArrayList<producto_servicio> obtenerProductos() {
        modeloProducto_servicio productos = new modeloProducto_servicio();
        return productos.obtenerProductos();
    }

    public boolean actualizarProducto(producto_servicio producto_servicio){
        modeloProducto_servicio producto1 = new modeloProducto_servicio();
        return producto1.actualizarProducto(producto_servicio);
    }

    public boolean borrarProducto (int idproducto){
        modeloProducto_servicio producto1 = new modeloProducto_servicio();
        return producto1.borrarProducto(idproducto);
    }

    public static void main(String[] args) {

        ControladorProducto_servicio cc = new ControladorProducto_servicio();
        //System.out.println(cc.crearProducto(new producto_servicio(3, "aaaa", "10", 12, 10, 10, 10, 1)));


    /*    ArrayList<producto_servicio> producto = new ArrayList<>();
       producto = cc.obtenerProducto(2);
        for (int b = 0; b < producto.size(); b++) {
            System.out.println("Id: " + producto.get(b).getId_producto());
            System.out.println("unidad: " + producto.get(b).getUnidad_produccion());

            System.out.println("Nombre: " + producto.get(b).getProducto_nombre());
            System.out.println("produccion mensual: " + producto.get(b).getProduccion_mensual());
            System.out.println("costo unitario: " + producto.get(b).getCosto_unitario());
            System.out.println("margen utilidad: " + producto.get(b).getMargen_utilidad());
            System.out.println("precio publico: " + producto.get(b).getPrecio_publico());
            System.out.println("Empresa: " + producto.get(b).getDatos_empresa_id_empresa());

        } */


      ArrayList<producto_servicio> productos = new ArrayList<>();
        productos = cc.obtenerProductos();
        for (int a = 0; a < productos.size(); a++) {
            System.out.println();
            System.out.println("Id: " + productos.get(a).getId_producto());
            System.out.println("Nombre " + productos.get(a).getProducto_nombre());
            System.out.println("Unidad: " + productos.get(a).getUnidad_produccion());
            System.out.println("Produccion mensual: " + productos.get(a).getProduccion_mensual());
            System.out.println("Costo unitario: " + productos.get(a).getCosto_unitario());
            System.out.println("Margen utilidad: " + productos.get(a).getMargen_utilidad());
            System.out.println("Precio publico: " + productos.get(a).getPrecio_publico());
            System.out.println("Empresa: " + productos.get(a).getDatos_empresa_id_empresa());
            System.out.println();

        }

        //Modificar un elemento
     //   System.out.println(cc.actualizarProducto(new producto_servicio(2, "a", "12", 25, 24, 23, 24, 2)));


        //Modificar un elemento
       // System.out.println(cc.borrarProducto( 1));
    }}
