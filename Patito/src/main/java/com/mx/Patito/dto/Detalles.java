package com.mx.Patito.dto;

import java.util.List;
import java.util.Set;

import com.mx.Patito.entidad.Camioneta;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@EqualsAndHashCode
public class Detalles {
	String codigo;
	String estatus;
	String nombre;
	int cantidad;
	double total;
	Object camionetas;
}
