package include;

public class datos_empresa {

    private int id_empresa;
    private String nombre_empresa;


    public datos_empresa (int id_empresa, String nombre_empresa)
    {
        this.id_empresa = id_empresa;
        this.nombre_empresa = nombre_empresa;

    }

    public int getId_empresa() {
        return id_empresa;
    }

    public void setId_empresa(int id_empresa) {
        this.id_empresa = id_empresa;
    }

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }


    }



