package cl.efpg.controlEnvios.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "usuario")
public class Usuario {
	
	@Id
	protected int id;
    protected String nombre;
    protected String apellido;
    protected String run;
    protected String edad;
    protected String direccion;
    protected String correoElectronico;
    protected int numeroTelefononico;
    protected String tipoUsuario;
    
    
    public Usuario () {
    	
    }
    
    
	public Usuario(int id, String nombre, String apellido, String run, String edad, String direccion,
			String correoElectronico, int numeroTelefononico, String tipoUsuario) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.run = run;
		this.edad = edad;
		this.direccion = direccion;
		this.correoElectronico = correoElectronico;
		this.numeroTelefononico = numeroTelefononico;
		this.tipoUsuario = tipoUsuario;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public String getRun() {
		return run;
	}


	public void setRun(String run) {
		this.run = run;
	}


	public String getEdad() {
		return edad;
	}


	public void setEdad(String edad) {
		this.edad = edad;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public String getCorreoElectronico() {
		return correoElectronico;
	}


	public void setCorreoElectronico(String correoElectronico) {
		this.correoElectronico = correoElectronico;
	}


	public int getNumeroTelefononico() {
		return numeroTelefononico;
	}


	public void setNumeroTelefononico(int numeroTelefononico) {
		this.numeroTelefononico = numeroTelefononico;
	}


	public String getTipoUsuario() {
		return tipoUsuario;
	}


	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
	
	
    
    
}
