package cl.efpg.controlEnvios.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.efpg.controlEnvios.model.entity.Paquete;

public interface IPaqueteRepository extends JpaRepository<Paquete,Integer>{
	Paquete findByNumeroPaquete(int numeroPaquete);
}
