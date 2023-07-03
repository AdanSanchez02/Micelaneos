package com.mx.Patito.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TruckDto {
	String hawa;
	String marca;
	String modelo;
	int anio;
	int precio;
	Double descuento;
	int cantidad;
}
