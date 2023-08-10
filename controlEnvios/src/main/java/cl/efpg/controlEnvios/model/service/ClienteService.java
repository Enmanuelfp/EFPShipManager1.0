package cl.efpg.controlEnvios.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.efpg.controlEnvios.model.entity.Cliente;
import cl.efpg.controlEnvios.model.repository.IClienteRepository;

@Service
public class ClienteService {
	
	
	@Autowired
	private IClienteRepository cRepo;
	
	
	public ClienteService() {
		
	}
	
	public List<Cliente>getAll(){
		return cRepo.findAll();
	}
	public Cliente getOne(int id) {
		return cRepo.getOne(id);
	}
	
	public void create(Cliente u) {
		cRepo.save(u);
	}
	
	public void update(Cliente u) {
		cRepo.save(u);
	}
	
	public void delete(int id) {
		cRepo.delete(cRepo.getOne(id));
	}

}
