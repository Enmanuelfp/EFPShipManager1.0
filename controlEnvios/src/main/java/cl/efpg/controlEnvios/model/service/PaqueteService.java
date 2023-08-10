package cl.efpg.controlEnvios.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.efpg.controlEnvios.model.entity.Paquete;
import cl.efpg.controlEnvios.model.repository.IPaqueteRepository;
import java.util.List;

@Service
public class PaqueteService {

	@Autowired
	private IPaqueteRepository pRepo;
	
	public PaqueteService() {
		
	}
	
	public List<Paquete>getAll(){
		return pRepo.findAll();
	}
	
	public Paquete getOne(int id) {
		return pRepo.getOne(id);
	}
	
	public void create(Paquete p) {
		pRepo.save(p);
	}
	
	public void update(Paquete p) {
		pRepo.save(p);
	}
	
	public void delete(int id) {
		pRepo.delete(pRepo.getOne(id));
	}
}
