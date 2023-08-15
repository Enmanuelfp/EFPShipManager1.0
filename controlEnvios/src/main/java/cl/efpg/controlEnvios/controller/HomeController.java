package cl.efpg.controlEnvios.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;

@Controller
@RequestMapping(path = "/")
public class HomeController {

    // Constantes
    // -----------------------------------------------------------------------------------------

    /** Objeto {@link Logger} que contiene los métodos de depuración */
    private static final Logger logger = LogManager.getLogger(HomeController.class);

    // Solicitudes GET
    // -----------------------------------------------------------------------------------------

    /**
     * Muestra la Página de Inicio
     *
     * @param nombre  nombre de la persona (opcional)
     * @param request objeto {@link HttpServletRequest} que contiene la información
     *                de la solicitud que le hace el cliente al {@link HttpServlet}
     * @param modelo  objeto {@link Model} con el modelo de la vista
     *
     * @return un objeto {@link String} con la respuesta a la solicitud
     */
    @GetMapping(path = { "/", "/{nombre}" })
    public String paginaInicio(@PathVariable Optional<String> nombre, HttpServletRequest request, Model modelo) {
        // Depuración
        logger.info("Solicitud GET: {}", request.getRequestURI());

        // Verificar si el parámetro ingresado por url está presente
        if (nombre.isPresent()) {
            // Agregar nombre al modelo
            modelo.addAttribute("nombre", nombre.get());

            // Mostrar página
            return "home2";
        }

        // Mostrar página
        return "index";
    }
    
    @RequestMapping(path = "/index", method = RequestMethod.GET)
    public ModelAndView goIndex() {  

        return new ModelAndView("index");
		
    }
    
    @RequestMapping(path = "/proyecto", method = RequestMethod.GET)
    public ModelAndView goProyectos() {  

        return new ModelAndView("proyecto");
		
    }
    
    @RequestMapping(path = "/home", method = RequestMethod.GET)
    public ModelAndView goHome() {  

        return new ModelAndView("home");
		
    }
    
    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public ModelAndView goLogin() {  

        return new ModelAndView("login");
		
    }
    
    @RequestMapping(path = "/contacto", method = RequestMethod.GET)
    public ModelAndView goContacto() {  

        return new ModelAndView("contacto");
		
    }
    
    @RequestMapping(path = "/contactoportafolio", method = RequestMethod.GET)
    public ModelAndView goContactoPortafolio() {  

        return new ModelAndView("contactoportafolio");
		
    }

}
