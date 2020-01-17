package com.skilldistillery.lakes.entities;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class LakeTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Lake lake;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Lake");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		lake=em.find(Lake.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		lake=null;
	}

	@Test
	void test_Laker_Entity_Mapping() {
assertNotNull(lake);

}

}
