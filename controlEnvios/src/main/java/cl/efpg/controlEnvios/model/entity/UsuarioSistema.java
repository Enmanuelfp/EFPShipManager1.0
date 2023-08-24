package cl.efpg.controlEnvios.model.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "usuario_sistema", catalog = "controlenvios")
public class UsuarioSistema {

	@Id
    @Column(name = "id")
    private int idUsuario;

    @Size(min = 3, max = 20, message = "El nombre debe tener entre 3 y 20 caracteres")
    private String nombre;

    @Size(min = 11, message = "La contraseña debe tener al menos 11 caracteres")
    @Pattern(regexp = "\\S+", message = "La contraseña no debe contener espacios")
    private String password;

    @Pattern(regexp = "ADMIN|cliente|repartidor", message = "El rol debe ser ADMIN, cliente o repartidor")
    private String rol;
	public UsuarioSistema() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UsuarioSistema(int idUsuario, String nombre, String password, String rol) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.password = password;
		this.rol = rol;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	@Override
	public String toString() {
		return "UsuarioSistema [idUsuario=" + idUsuario + ", nombre=" + nombre + ", password=" + password + ", rol="
				+ rol + "]";
	}
}
