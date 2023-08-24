package cl.efpg.controlEnvios.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contacto")
public class Contacto {

	
	

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String nombre;

	    @Column(name = "correoElectronico")
	    private String correoElectronico;

	    private int numeroTelefonico;

	    private String mensaje;

		public Contacto() {
			super();
		}

		public Contacto(Long id, String nombre, String correoElectronico, int numeroTelefonico, String mensaje) {
			super();
			this.id = id;
			this.nombre = nombre;
			this.correoElectronico = correoElectronico;
			this.numeroTelefonico = numeroTelefonico;
			this.mensaje = mensaje;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
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

		public String getMensaje() {
			return mensaje;
		}

		public void setMensaje(String mensaje) {
			this.mensaje = mensaje;
		}
	    
	    

}
