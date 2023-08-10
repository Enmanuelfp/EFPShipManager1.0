package cl.efpg.controlEnvios.model.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import cl.efpg.controlEnvios.model.entity.Cliente;


public interface IClienteRepository extends JpaRepository<Cliente,Integer> {

}
