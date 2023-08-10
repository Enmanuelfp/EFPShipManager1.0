package cl.efpg.controlEnvios.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Paquete {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPaquete;
    
    private String direccionDestino;
    
    @ManyToOne
    private Cliente cliente;  // Relación con Cliente
    
    @ManyToOne
    private Repartidor repartidor;  // Relación con Repartidor

    public Paquete() {
        // Constructor vacío
    }

	public Paquete(int idPaquete, String direccionDestino, Cliente cliente, Repartidor repartidor) {
		super();
		this.idPaquete = idPaquete;
		this.direccionDestino = direccionDestino;
		this.cliente = cliente;
		this.repartidor = repartidor;
	}

	public int getIdPaquete() {
		return idPaquete;
	}

	public void setIdPaquete(int idPaquete) {
		this.idPaquete = idPaquete;
	}

	public String getDireccionDestino() {
		return direccionDestino;
	}

	public void setDireccionDestino(String direccionDestino) {
		this.direccionDestino = direccionDestino;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Repartidor getRepartidor() {
		return repartidor;
	}

	public void setRepartidor(Repartidor repartidor) {
		this.repartidor = repartidor;
	}

	@Override
	public String toString() {
		return "Paquete [idPaquete=" + idPaquete + ", direccionDestino=" + direccionDestino + ", cliente=" + cliente
				+ ", repartidor=" + repartidor + "]";
	}

    
}

	
	
	


