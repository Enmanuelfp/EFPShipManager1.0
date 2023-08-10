package cl.efpg.controlEnvios.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.efpg.controlEnvios.model.entity.Repartidor;
import cl.efpg.controlEnvios.model.repository.IRepartidorRepository;

@Service
public class RepartidorService {
	
	@Autowired
	private IRepartidorRepository rRepo; 
	
	public RepartidorService() {
		
	}
	
	public List<Repartidor>getAll(){
		return rRepo.findAll();
	}
	
	public Repartidor getOne(int id) {
		return rRepo.getOne(id);
	}
	
	public void create(Repartidor r) {
		rRepo.save(r);
	}
	
	public void update(Repartidor r) {
		rRepo.save(r);
	}
	
	public void delete(int id) {
		rRepo.delete(rRepo.getOne(id));
	}

}
