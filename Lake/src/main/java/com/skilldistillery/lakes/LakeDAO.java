package com.skilldistillery.lakes;

import java.util.List;

import com.skilldistillery.lakes.entities.Lake;

public interface LakeDAO {
	public List<Lake> findAll();

	public Lake find(int id);

	public Boolean delete(int id);

	public Lake update(Lake lake);
	
	public List <Lake> search(String str);
	
	public Lake create(Lake lake);
	

}
