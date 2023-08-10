package cl.efpg.controlEnvios.model.entity;

import java.util.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Repartidor extends Usuario {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected int idRepartidor;  // Cambiado a Long
    
    protected String licencia;
    protected String vehiculo;
    
    @OneToMany(mappedBy = "repartidor")  // Relación con Paquete
    private List<Paquete> paquetes = new ArrayList<>();

    public Repartidor() {
        super();
    }

	public Repartidor(int idRepartidor, String licencia, String vehiculo, List<Paquete> paquetes) {
		super();
		this.idRepartidor = idRepartidor;
		this.licencia = licencia;
		this.vehiculo = vehiculo;
		this.paquetes = paquetes;
	}

	public Repartidor(int id, String nombre, String apellido, String run, String edad, String direccion,
			String correoElectronico, int numeroTelefononico, String tipoUsuario) {
		super(id, nombre, apellido, run, edad, direccion, correoElectronico, numeroTelefononico, tipoUsuario);
		// TODO Auto-generated constructor stub
	}

	public int getIdRepartidor() {
		return idRepartidor;
	}

	public void setIdRepartidor(int idRepartidor) {
		this.idRepartidor = idRepartidor;
	}

	public String getLicencia() {
		return licencia;
	}

	public void setLicencia(String licencia) {
		this.licencia = licencia;
	}

	public String getVehiculo() {
		return vehiculo;
	}

	public void setVehiculo(String vehiculo) {
		this.vehiculo = vehiculo;
	}

	public List<Paquete> getPaquetes() {
		return paquetes;
	}

	public void setPaquetes(List<Paquete> paquetes) {
		this.paquetes = paquetes;
	}

    
}


