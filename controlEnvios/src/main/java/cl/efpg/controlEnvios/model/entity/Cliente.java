package cl.efpg.controlEnvios.model.entity;

import java.util.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "cliente") // Mapeo a la tabla "cliente"
public class Cliente extends Usuario {
    
    
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected int idCliente; 
    
    protected String tipoEmpresa;

    @OneToMany(mappedBy = "cliente")  // Relación con Paquete
    private List<Paquete> paquetes = new ArrayList<>();

    public Cliente() {
        // Constructor vacío
    }

	public Cliente(int idCliente, String tipoEmpresa, List<Paquete> paquetes) {
		super();
		this.idCliente = idCliente;
		this.tipoEmpresa = tipoEmpresa;
		this.paquetes = paquetes;
	}

	public Cliente(int id, String nombre, String apellido, String run, String edad, String direccion,
			String correoElectronico, int numeroTelefononico, String tipoUsuario) {
		super(id, nombre, apellido, run, edad, direccion, correoElectronico, numeroTelefononico, tipoUsuario);
		// TODO Auto-generated constructor stub
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getTipoEmpresa() {
		return tipoEmpresa;
	}

	public void setTipoEmpresa(String tipoEmpresa) {
		this.tipoEmpresa = tipoEmpresa;
	}

	public List<Paquete> getPaquetes() {
		return paquetes;
	}

	public void setPaquetes(List<Paquete> paquetes) {
		this.paquetes = paquetes;
	}

	@Override
	public String toString() {
		return "Cliente [idCliente=" + idCliente + ", tipoEmpresa=" + tipoEmpresa + ", paquetes=" + paquetes + ", id="
				+ id + ", nombre=" + nombre + ", apellido=" + apellido + ", run=" + run + ", edad=" + edad
				+ ", direccion=" + direccion + ", correoElectronico=" + correoElectronico + ", numeroTelefononico="
				+ numeroTelefononico + ", tipoUsuario=" + tipoUsuario + "]";
	}

    
}
