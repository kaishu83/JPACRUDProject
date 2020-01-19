package com.skilldistillery.lakes.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Lake {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	@Column(name = "size_in_acer")
	private Integer size;

	@Column(name = "open_for_ice_fishing")
	private Boolean canIceFishing;

	@Column(name = "entry_fee")
	private Integer fee;

	@Column(name = "fish_species_in_lake")
	private String fishSpecies;

	private Integer elevation;

	private String county;

	private String notes;

	public Lake() {

	}

	public Lake(int id, String name, Integer size, boolean canIceFishing, Integer fee, String fishSpecies,
			Integer elevation, String county, String notes) {
		super();
		this.id = id;
		this.name = name;
		this.size = size;
		this.canIceFishing = canIceFishing;
		this.fee = fee;
		this.fishSpecies = fishSpecies;
		this.elevation = elevation;
		this.county = county;
		this.notes = notes;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public boolean isCanIceFishing() {
		return canIceFishing;
	}

	public void setCanIceFishing(boolean canIceFishing) {
		this.canIceFishing = canIceFishing;
	}

	public Integer getFee() {
		return fee;
	}

	public void setFee(Integer fee) {
		this.fee = fee;
	}

	public String getFishSpecies() {
		return fishSpecies;
	}

	public void setFishSpecies(String fishSpecies) {
		this.fishSpecies = fishSpecies;
	}

	public Integer getElevation() {
		return elevation;
	}

	public void setElevation(Integer elevation) {
		this.elevation = elevation;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Lake [id=").append(id).append(", name=").append(name).append(", size=").append(size)
				.append(", canIceFishing=").append(canIceFishing).append(", fee=").append(fee).append(", fishSpecies=")
				.append(fishSpecies).append(", elevation=").append(elevation).append(", county=").append(county)
				.append(", notes=").append(notes).append("]");
		return builder.toString();
	}

}

	