package com.example.demo.dto;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="equipo")
public class Equipo {
	@Id
	private String num_serie;
	@Column(name = "nombre")
	private String nombre;
	
	@ManyToOne
}
