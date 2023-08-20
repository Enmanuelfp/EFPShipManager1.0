package cl.efpg.controlEnvios.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.efpg.controlEnvios.model.entity.Cliente;
import cl.efpg.controlEnvios.model.entity.Paquete;
import cl.efpg.controlEnvios.model.entity.Repartidor;
import cl.efpg.controlEnvios.model.service.ClienteService;
import cl.efpg.controlEnvios.model.service.PaqueteService;
import cl.efpg.controlEnvios.model.service.RepartidorService;

@Controller
public class PaqueteController {

    @Autowired
    private PaqueteService paqueteService;

    @Autowired
    private ClienteService clienteService;

    @Autowired
    private RepartidorService repartidorService;

    @RequestMapping(path = "/crearpaquete", method = RequestMethod.GET)
    public ModelAndView goCrearPaquete() {
        ModelAndView modelAndView = new ModelAndView("crearpaquete");
        
        List<Cliente> clientes = clienteService.getAll();
        List<Repartidor> repartidores = repartidorService.getAll();
        
        modelAndView.addObject("clientes", clientes);
        modelAndView.addObject("repartidores", repartidores);
        
        return modelAndView;
    }

}
