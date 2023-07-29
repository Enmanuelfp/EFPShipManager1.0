package cl.efpg.controlEnvios.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.efpg.controlEnvios.entity.Usuario;
@Repository
public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

}
