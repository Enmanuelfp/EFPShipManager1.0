package cl.efpg.controlEnvios.model.entity;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "cliente")
@PrimaryKeyJoinColumn(name = "id")
public class Cliente extends Usuario {
    @Column(name = "tipoEmpresa")
    protected String tipoEmpresa;

    @OneToMany(mappedBy = "cliente", fetch = FetchType.EAGER)
    private List<Paquete> paquetes = new ArrayList<>();

    public Cliente() {
        // Constructor vacío
    }

	public Cliente(int id, String tipoEmpresa, List<Paquete> paquetes) {
		super();
		this.id = id;
		this.tipoEmpresa = tipoEmpresa;
		this.paquetes = paquetes;
	}

	public Cliente(int id, String nombre, String apellido, String run, String edad, String direccion,
			String correoElectronico, int numeroTelefonico, String tipoUsuario) {
		super(id, nombre, apellido, run, edad, direccion, correoElectronico, numeroTelefonico, tipoUsuario);
		// TODO Auto-generated constructor stub
	}

	public int getIdCliente() {
		return id;
	}

	public void setIdCliente(int idCliente) {
		this.id = idCliente;
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
		return "Cliente [idCliente=" + id + ", tipoEmpresa=" + tipoEmpresa + ", paquetes=" + paquetes + ", id="
				+ id + ", nombre=" + nombre + ", apellido=" + apellido + ", run=" + run + ", edad=" + edad
				+ ", direccion=" + direccion + ", correoElectronico=" + correoElectronico + ", numeroTelefononico="
				+ numeroTelefonico + ", tipoUsuario=" + tipoUsuario + "]";
	}

    
}
