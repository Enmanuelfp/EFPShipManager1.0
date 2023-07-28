package cl.efpg.controlEnvios.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.efpg.controlEnvios.entity.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

}
