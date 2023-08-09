package cl.efpg.controlEnvios.model.service;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.efpg.controlEnvios.model.entity.Usuario;
import cl.efpg.controlEnvios.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private IUsuarioRepository uRepo;
	
	public UsuarioService() {
		
	}
	
	public List<Usuario>getAll(){
		return uRepo.findAll();
	}
	public Usuario getOne(int id) {
		return uRepo.getOne(id);
	}
	
	public void create(Usuario u) {
		uRepo.save(u);
	}
	
	public void update(Usuario u) {
		uRepo.save(u);
	}
	
	public void delete(int id) {
		uRepo.delete(uRepo.getOne(id));
	}
}
