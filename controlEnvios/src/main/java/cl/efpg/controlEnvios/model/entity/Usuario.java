package cl.efpg.controlEnvios.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name = "usuario")
@Inheritance(strategy = InheritanceType.JOINED)
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	protected int id;
    protected String nombre;
    protected String apellido;
    protected String run;
    protected String edad;
    protected String direccion;
    protected String correoElectronico;
    protected int numeroTelefonico;
    protected String tipoUsuario;
    
    
    public Usuario () {
    	
    }
    
    
	public Usuario(int id, String nombre, String apellido, String run, String edad, String direccion,
			String correoElectronico, int numeroTelefonico, String tipoUsuario) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.run = run;
		this.edad = edad;
		this.direccion = direccion;
		this.correoElectronico = correoElectronico;
		this.numeroTelefonico = numeroTelefonico;
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


	public int getNumeroTelefonico() {
		return numeroTelefonico;
	}


	public void setNumeroTelefonico(int numeroTelefonico) {
		this.numeroTelefonico = numeroTelefonico;
	}


	public String getTipoUsuario() {
		return tipoUsuario;
	}


	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
	
	
    
    
}
