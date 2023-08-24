package cl.efpg.controlEnvios.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.efpg.controlEnvios.model.entity.Contacto;
import cl.efpg.controlEnvios.model.entity.Usuario;
import cl.efpg.controlEnvios.model.repository.IContactoRepository;
import cl.efpg.controlEnvios.model.service.ContactoService;

@Controller
public class ContactoController {

	  @Autowired
	    private ContactoService ic;
	  
	  @RequestMapping("/contactoportafolio")
	    public String goContactoportafolio() {
	        return "contactoportafolio";
	    }

	    @RequestMapping("/contacto")
	    public String showContactForm() {
	        return "contacto";
	    }

	    @RequestMapping(path = "/guardarContacto", method = RequestMethod.POST)
	    public ModelAndView saveContacto(HttpServletRequest request) {
	        String nombre = request.getParameter("nombre");
	        String correoElectronico = request.getParameter("correoElectronico");
	        String numeroTelefonicoStr = request.getParameter("numeroTelefonico");
	        int numeroTelefonico = Integer.parseInt(numeroTelefonicoStr);
	        String mensaje = request.getParameter("mensaje");

	        Contacto contacto = new Contacto();
	        contacto.setNombre(nombre);
	        contacto.setCorreoElectronico(correoElectronico);
	        contacto.setNumeroTelefonico(numeroTelefonico);
	        contacto.setMensaje(mensaje);

	        ic.create(contacto);

	        return new ModelAndView("contacto");
	    }
	    
	    @RequestMapping(path = "/guardarcontactoportafolio", method = RequestMethod.POST)
	    public ModelAndView saveContactoPortafolio(HttpServletRequest request) {
	        String nombre = request.getParameter("nombre");
	        String correoElectronico = request.getParameter("correoElectronico");
	        String numeroTelefonicoStr = request.getParameter("numeroTelefonico");
	        int numeroTelefonico = Integer.parseInt(numeroTelefonicoStr);
	        String mensaje = request.getParameter("mensaje");

	        Contacto contacto = new Contacto();
	        contacto.setNombre(nombre);
	        contacto.setCorreoElectronico(correoElectronico);
	        contacto.setNumeroTelefonico(numeroTelefonico);
	        contacto.setMensaje(mensaje);

	        ic.create(contacto);

	        return new ModelAndView("contactoportafolio");
	    }
	    
	    @RequestMapping(path = "/contactolista", method = RequestMethod.GET)
	    public ModelAndView goListarContacto() {
	        List<Contacto> contactoList = ic.getAll(); 
	        return new ModelAndView("contactolista", "contactoList", contactoList);
	    }
	   
}
