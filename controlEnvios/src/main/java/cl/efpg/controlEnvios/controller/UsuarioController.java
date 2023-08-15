package cl.efpg.controlEnvios.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.efpg.controlEnvios.model.entity.Usuario;
import cl.efpg.controlEnvios.model.service.ClienteService;
import cl.efpg.controlEnvios.model.service.RepartidorService;
import cl.efpg.controlEnvios.model.service.UsuarioService;
import cl.efpg.controlEnvios.model.entity.Repartidor;
import cl.efpg.controlEnvios.model.entity.Cliente;



@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService us;
	@Autowired
	private RepartidorService rs;
	@Autowired
	private ClienteService cs;
	
	@RequestMapping(path = "/crearusuario", method = RequestMethod.GET)
	public ModelAndView goCrearUsuarioSistema() {
		return new ModelAndView("crearusuario");
	}
	
	@RequestMapping(path ="/listarusuario", method = RequestMethod.GET)
	public ModelAndView goListarCliente() {
		List<Usuario> usuarios = us.getAll();
			return new ModelAndView("listarusuario","usuarios",usuarios);
	}
	
	@RequestMapping(path = "/crearusuario", method = RequestMethod.POST)
	public void createUsuario(
	        @RequestParam("nombre") String nombre,
	        @RequestParam("apellido") String apellido,
	        @RequestParam("run") String run,
	        @RequestParam("edad") String edad,
	        @RequestParam("direccion") String direccion,
	        @RequestParam("correoElectronico") String correoElectronico,
	        @RequestParam("numeroTelefonico") int numeroTelefonico,
	        @RequestParam("tipoUsuario") String tipoUsuario,
			@RequestParam("tipoLicencia") String Licencia,
			@RequestParam("tipoVehiculo") String Vehiculo,
			@RequestParam("tipoEmpresa") String tipoEmpresa)

	{
	    
	    
	    
	    if ("Repartidor".equals(tipoUsuario)) {
	        Repartidor repartidor = new Repartidor();
	        
	        repartidor.setNombre(nombre);
	        repartidor.setApellido(apellido);
	        repartidor.setRun(run);
	        repartidor.setEdad(edad);
	        repartidor.setDireccion(direccion);
	        repartidor.setCorreoElectronico(correoElectronico);
	        repartidor.setNumeroTelefonico(numeroTelefonico);
	        repartidor.setTipoUsuario(tipoUsuario);
	        
	        // Configurar atributos específicos de Repartidor
	        repartidor.setLicencia(Licencia);
	        repartidor.setVehiculo(Vehiculo);
	       
	        System.out.println("Estamos a la mitad");
	        rs.create(repartidor);
	        System.out.println("Listo");
	        
	      System.out.println(repartidor.toString());
	    } else if ("Cliente".equals(tipoUsuario)) {
	        Cliente cliente = new Cliente();
	        cliente.setNombre(nombre);
	        cliente.setApellido(apellido);
	        cliente.setRun(run);
	        cliente.setEdad(edad);
	        cliente.setDireccion(direccion);
	        cliente.setCorreoElectronico(correoElectronico);
	        cliente.setNumeroTelefonico(numeroTelefonico);
	        cliente.setTipoUsuario(tipoUsuario);
	        
	        // Configurar atributos específicos de Cliente
	        cliente.setTipoEmpresa(tipoEmpresa);
	      
	        System.out.println("Estamos a la mitad");
	        cs.create(cliente);
	        System.out.println("Listo");
	        
	    } else {
	        // En caso de otro tipo de usuario, simplemente crear un Usuario genérico
	        Usuario usuario = new Usuario();
	        usuario.setNombre(nombre);
	        usuario.setApellido(apellido);
	        usuario.setRun(run);
	        usuario.setEdad(edad);
	        usuario.setDireccion(direccion);
	        usuario.setCorreoElectronico(correoElectronico);
	        usuario.setNumeroTelefonico(numeroTelefonico);
	        usuario.setTipoUsuario(tipoUsuario);
	        System.out.println("Estamos a la mitad");
	        us.create(usuario);
	        System.out.println("Listo");
	    }
	    
	    
	}
	
	

	
	
	
}
