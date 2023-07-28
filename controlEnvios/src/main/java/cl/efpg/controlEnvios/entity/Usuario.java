package cl.efpg.controlEnvios.entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "usuario")
public class Usuario {
	
	@Id
	protected int id;
	@Basic
    protected String nombre;
    protected String apellido;
    protected String run;
    protected String edad;
    protected String direccion;
    protected String correoElectronico;
    protected int numeroTelefononico;
    protected String tipoUsuario;

}
