package cl.efpg.controlEnvios.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import cl.efpg.controlEnvios.model.entity.UsuarioSistema;
import cl.efpg.controlEnvios.model.service.UsuarioSistemaService;

@Controller
public class UsuarioSistemaController {

	@Autowired
	private UsuarioSistemaService us;
	
	
	@RequestMapping(path = "/crearusuariosistema", method = RequestMethod.GET)
	public ModelAndView goCrearUsuarioSistema() {
		return new ModelAndView("crearusuariosistema");
}

@RequestMapping(path = "/gestionusuario" , method = RequestMethod.GET)
	public ModelAndView goListarUsuarioSistema() {
	List<UsuarioSistema> usuariosistema = us.getAll();
		return new ModelAndView("gestionusuario","usuariosistema",usuariosistema);
}


 @RequestMapping(path = "/crearusuariosistema", method = RequestMethod.POST)
 public RedirectView createUsuarioSistema(    	
		 @RequestParam("nombre") String nombre,
	        @RequestParam("password") String password,
	        @RequestParam("rol") String rol,        
	        HttpServletResponse response) throws IOException {
		 System.out.println("estamos a la mitad");
	    
	    UsuarioSistema usuariosistema = new UsuarioSistema();
	    
	    usuariosistema.setNombre(nombre);
	    usuariosistema.setPassword(password);
	    usuariosistema.setRol(rol);
	   
	    System.out.println("estamos casi");
	    try {
	        us.create(usuariosistema);
	        System.out.println("listo");
	        
	        return new RedirectView("/controlEnvios/gestionusuario");
	    } catch (ConstraintViolationException ex) {
	    	System.out.println("errr");
	    }	
	    return new RedirectView("/controlEnvios/gestionusuario");

}

 @RequestMapping(path = "/actualizarusuariosistema", method = RequestMethod.POST)
 public RedirectView updateUsuarioSistema(
         @RequestParam("idusuario") int idUsuario,        
         @RequestParam("nombre") String nombre,
         @RequestParam("password") String password,
         @RequestParam("rol") String rol ) {

     System.out.println("Empezamos la actualización de administrativo");

     
     UsuarioSistema usuariosistema1 = new UsuarioSistema(); 
     
     System.out.println("ID de Administrativo a actualizar: " + idUsuario);

     usuariosistema1.setIdUsuario(idUsuario);   
     usuariosistema1.setNombre(nombre);
     usuariosistema1.setPassword(password);
     usuariosistema1.setRol(rol);

    
     us.update(usuariosistema1);

     System.out.println("Administrativo actualizado correctamente.");

     
     return new RedirectView("/controlEnvios/gestionusuario");
 }
	 
 }
