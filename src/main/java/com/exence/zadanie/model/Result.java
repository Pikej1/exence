package com.exence.zadanie.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class Result {

	@Pattern(regexp = "[0-9]+", message = "Musisz podac liczbe naturalna")
	@NotNull(message = "Wypełnij pole")
	private String value;

	public Result() {}
	
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
}
