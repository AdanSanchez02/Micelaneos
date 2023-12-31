package com.mx.Patito.entidad;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pedido {
	@Id
	@Column
	String codigo;
	@Column
	String estatus;
	@Column(name = "NOMBRE_CLIENTE")
	String nombrec;
    @JsonFormat(pattern="dd/MM/yyyy HH:mm", timezone = "America/Mexico_City")
	@Column
	Timestamp fecha_creacion;
	
	@ManyToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
	@JoinTable(name = "TRUCK_PEDIDO",
	joinColumns = @JoinColumn(name = "ID_CODIGO", referencedColumnName = "CODIGO"),
	inverseJoinColumns = @JoinColumn(name = "ID_HAWA", referencedColumnName = "HAWA")
			)
	List<Camioneta> listaCamioneta = new ArrayList<>(); 
	
	public Pedido(String codigo) {
		this.codigo = codigo;
	}

}
