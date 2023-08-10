package cl.efpg.controlEnvios.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import cl.efpg.controlEnvios.model.entity.Repartidor;


public interface IRepartidorRepository extends JpaRepository<Repartidor,Integer>  {

}
