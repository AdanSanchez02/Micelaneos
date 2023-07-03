package com.mx.Patito.entidad;

import java.util.ArrayList;
import java.util.List;


import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "TRUCK")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Camioneta {
	@Id
	@Column
	String hawa;
	@Column
	String marca;
	@Column
	String modelo;
	@Column
	int anio;
	@Column
	int precio;
	@Column
	int stock;
	@Column 
	Double descuento;


	@OneToMany(mappedBy = "camioneta", cascade = CascadeType.ALL)
	@JsonIgnore
	List<Auditoria> listaAuditoria = new ArrayList<>();
	@ManyToMany(mappedBy = "listaCamioneta")
	@JsonIgnore
	List<Pedido> listaPedido = new ArrayList<>();
	
	public Camioneta(String hawa) {
		this.hawa = hawa;
	}
}
