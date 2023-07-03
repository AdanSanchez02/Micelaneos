package com.mx.Patito.entidad;

import java.sql.Date;
import java.sql.Timestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "AUDITO")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Auditoria {
	@Id
	@Column
	int id;
	@Column
	Timestamp fecha_evento;
	@Column
	String usuario;
	@Column
	String id_tienda;
	@Column
	String nombre_cliente;
	@Column
	String nombre_ven;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ID_HAWA")
	Camioneta camioneta;
	
	public Auditoria(String nombreCliente, Camioneta camioneta) {
		this.nombre_cliente = nombreCliente;
		this.camioneta = camioneta;
	}
}
