package cl.efpg.controlEnvios.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

    @GetMapping("/crearpaquete")
    public ModelAndView goCrearPaquete() {
        ModelAndView modelAndView = new ModelAndView("crearpaquete");
        
        List<Cliente> clientes = clienteService.getAll();
        List<Repartidor> repartidores = repartidorService.getAll();
        
        modelAndView.addObject("clientes", clientes);
        modelAndView.addObject("repartidores", repartidores);
        
        return modelAndView;
    }

    @PostMapping("/crearpaquete")
    public ModelAndView crearPaquete(
    		@RequestParam("direccionDestino") String direccionDestino,
            @RequestParam("numeroPaquete") int numeroPaquete,
            @RequestParam("repartidor") int repartidorId,
            @RequestParam("cliente") int clienteId) {
        Cliente cliente = clienteService.getOne(clienteId);
        Repartidor repartidor = repartidorService.getOne(repartidorId);
        
        Paquete paquete = new Paquete();
        paquete.setDireccionDestino(direccionDestino);
        paquete.setNumeroPaquete(numeroPaquete);
        paquete.setCliente(cliente);
        paquete.setRepartidor(repartidor);
        
        paqueteService.create(paquete);
        
        return new ModelAndView("redirect:/crearpaquete"); // Redirecciona a la página de creación de paquetes después de crear uno
    }
    
   

        @GetMapping("/listarpaquetes")
        public ModelAndView listarPaquetes() {
            ModelAndView modelAndView = new ModelAndView("listarpaquetes");
            
            List<Paquete> paquetes = paqueteService.getAll();
            modelAndView.addObject("paquetes", paquetes);
            
            return modelAndView;
        }
        
        @PostMapping("/editar")
        public String editarPaquete(@RequestParam("numeroPaquete") int numeroPaquete,
                                     @RequestParam("direccionDestino") String direccionDestino,
                                     @RequestParam("repartidorNombre") String repartidorNombre,
                                     @RequestParam("repartidorApellido") String repartidorApellido,
                                     @RequestParam("clienteNombre") String clienteNombre,
                                     @RequestParam("clienteApellido") String clienteApellido) {

            // Crear el objeto Paquete y establecer los valores
            Paquete paquete = new Paquete();
            paquete.setNumeroPaquete(numeroPaquete);
            paquete.setDireccionDestino(direccionDestino);
            
            Repartidor repartidor = new Repartidor();
            repartidor.setNombre(repartidorNombre);
            repartidor.setApellido(repartidorApellido);
            paquete.setRepartidor(repartidor);
            
            Cliente cliente = new Cliente();
            cliente.setNombre(clienteNombre);
            cliente.setApellido(clienteApellido);
            paquete.setCliente(cliente);

            // Llamar al método de servicio para actualizar el paquete
            paqueteService.update(paquete);

            // Redirigir a la página de lista de paquetes
            return "redirect:/listarpaquetes";
        }

}
