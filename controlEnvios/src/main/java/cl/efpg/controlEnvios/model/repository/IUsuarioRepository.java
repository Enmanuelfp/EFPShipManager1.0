package cl.efpg.controlEnvios.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import cl.efpg.controlEnvios.model.entity.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

}
