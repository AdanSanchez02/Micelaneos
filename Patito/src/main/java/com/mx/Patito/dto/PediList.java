package com.mx.Patito.dto;

import java.sql.Timestamp;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.mx.Patito.entidad.Camioneta;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PediList {
	String codigo;
	String estatus;
	String nombrec;
	@JsonFormat(pattern="dd/MM/yyyy HH:mm", timezone = "America/Mexico_City")
	Timestamp fecha_creacion;
	int cantidad;
	List<Camioneta> listcamionetas;
}
