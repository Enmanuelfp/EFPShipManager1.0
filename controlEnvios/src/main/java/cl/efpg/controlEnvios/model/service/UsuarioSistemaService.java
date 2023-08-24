package cl.efpg.controlEnvios.model.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.efpg.controlEnvios.model.entity.UsuarioSistema;
import cl.efpg.controlEnvios.model.repository.IUsuarioSistemaRepository;

@Service
public class UsuarioSistemaService {

	@Autowired
	private IUsuarioSistemaRepository usuREPO;
	
	
	public List<UsuarioSistema> getAll(){
		return usuREPO.findAll();
	}
	
	public void create(UsuarioSistema u) {
		usuREPO.save(u);
	}
	
	public void update(UsuarioSistema u) {
		usuREPO.save(u);
	}
	
		 

    public UsuarioSistema obtenerUsuarioSistema(int idUsuario) {
        return usuREPO.findById(idUsuario).orElse(null) ;
    }
	
    public UsuarioSistema obtenerUsuarioPorNombreUsuario(String nombreUsuario) {
        return usuREPO.findByNombre(nombreUsuario);
    }
    
}