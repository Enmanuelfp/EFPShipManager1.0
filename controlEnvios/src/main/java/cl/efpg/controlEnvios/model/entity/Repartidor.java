package cl.efpg.controlEnvios.model.entity;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@Table(name = "repartidor")
@PrimaryKeyJoinColumn(name = "id")
public class Repartidor extends Usuario {
    @Column(name = "licencia")
    protected String licencia;

    @Column(name = "vehiculo")
    protected String vehiculo;

    @OneToMany(mappedBy = "repartidor", fetch = FetchType.EAGER)
    private List<Paquete> paquetes = new ArrayList<>();

    public Repartidor() {
        super();
    }

	public Repartidor(int id, String licencia, String vehiculo, List<Paquete> paquetes) {
		super();
		this.id = id;
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
		return id;
	}

	public void setIdRepartidor(int idRepartidor) {
		this.id = idRepartidor;
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

	@Override
	public String toString() {
		return "Repartidor [licencia=" + licencia + ", vehiculo=" + vehiculo + ", paquetes=" + paquetes + ", id=" + id
				+ ", nombre=" + nombre + ", apellido=" + apellido + ", run=" + run + ", edad=" + edad + ", direccion="
				+ direccion + ", correoElectronico=" + correoElectronico + ", numeroTelefonico=" + numeroTelefonico
				+ ", tipoUsuario=" + tipoUsuario + "]";
	}

    
}


