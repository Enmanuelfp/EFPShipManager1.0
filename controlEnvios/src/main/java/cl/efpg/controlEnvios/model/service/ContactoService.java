package cl.efpg.controlEnvios.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.efpg.controlEnvios.model.entity.Cliente;
import cl.efpg.controlEnvios.model.entity.Contacto;
import cl.efpg.controlEnvios.model.repository.IContactoRepository;

@Service
public class ContactoService {

	@Autowired IContactoRepository icRepo;
	public ContactoService() {
	
	}
	
	public List<Contacto>getAll(){
		return icRepo.findAll();
	}
	public Contacto getOne(int id) {
		return icRepo.getOne((long) id);
	}
	
	public void create(Contacto ic) {
		icRepo.save(ic);
	}
	
	public void update(Contacto ic) {
		icRepo.save(ic);
	}
	
	public void delete(int id) {
		icRepo.delete(icRepo.getOne((long) id));
	}

}
