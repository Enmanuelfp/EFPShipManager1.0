package cl.efpg.controlEnvios.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.efpg.controlEnvios.model.entity.UsuarioSistema;

public interface IUsuarioSistemaRepository extends JpaRepository <UsuarioSistema,Integer>{
    UsuarioSistema findByNombre(String nombre);
}
