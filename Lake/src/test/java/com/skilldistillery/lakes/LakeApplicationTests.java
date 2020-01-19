package com.skilldistillery.lakes;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class LakeApplicationTests {

	LakeDAO dao=new LakeDAOlmp();

	@Test
	void contextLoads() {
		assertEquals(31650, dao.find(2).getSize());

	}

}
