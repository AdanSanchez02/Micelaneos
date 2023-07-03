package com.mx.Patito.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mx.Patito.entidad.Camioneta;
@Repository
public interface CamionetaDao extends JpaRepository<Camioneta, String> {
	boolean existsByMarca(String marca);
	boolean existsByModelo(String modelo);
}
