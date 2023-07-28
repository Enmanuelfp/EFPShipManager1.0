package cl.efpg.controlEnvios.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.efpg.controlEnvios.entity.Usuario;
import cl.efpg.controlEnvios.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService u;

	@RequestMapping(value="/usuario", method = RequestMethod.GET)
	public ModelAndView mostrarUsuarios() {
		List<Usuario> usuarios = u.getAll();
		
		return new ModelAndView("usuario", "usuario", usuarios);
	}
}
