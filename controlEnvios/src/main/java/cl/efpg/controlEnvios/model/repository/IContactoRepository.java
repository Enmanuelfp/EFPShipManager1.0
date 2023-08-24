package cl.efpg.controlEnvios.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.efpg.controlEnvios.model.entity.Contacto;

public interface IContactoRepository extends JpaRepository<Contacto, Long> {

}
