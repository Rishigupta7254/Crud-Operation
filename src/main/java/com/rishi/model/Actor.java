package com.rishi.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Table(name="Actor")
@Entity

public class Actor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer actid;
	private String actname;
    private String movieName ;
    private Double  remueration;
    private String category;
    
}
