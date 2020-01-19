package com.skilldistillery.lakes;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.lakes.entities.Lake;

@Service
@Transactional
public class LakeDAOlmp implements LakeDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Lake> findAll() {
		String query = "select lake from Lake lake";
		List<Lake> lakes = em.createQuery(query, Lake.class).getResultList();

		return lakes;
	}

	@Override
	public Lake find(int id) {
		return em.find(Lake.class, id);
	}

	@Override
	public boolean delete(int id) {
		try {
			em.remove(em.find(Lake.class, id));
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public Lake update(Lake newLake) {

		Lake lake = em.find(Lake.class, newLake.getId());
		lake.setName(newLake.getName());
		lake.setSize(newLake.getSize());
		lake.setCanIceFishing(newLake.isCanIceFishing());
		lake.setFee(newLake.getFee());
		lake.setFishSpecies(newLake.getFishSpecies());
		lake.setElevation(newLake.getElevation());
		lake.setCounty(newLake.getCounty());
		lake.setNotes(newLake.getNotes());

		return lake;

	}

	@Override
	public List<Lake> search(String str) {
		String query = "SELECT lake from Lake lake where lake.name LIKE :name";
		List<Lake> lakes = em.createQuery(query, Lake.class).setParameter("name", "%" + str + "%").getResultList();

		return lakes;
	}

	@Override
	public Lake create(Lake lake) {
		em.persist(lake);
		return lake;
	}

}
