package com.codeclan.example.PirateService;

import com.codeclan.example.PirateService.models.Pirate;
import com.codeclan.example.PirateService.models.Ship;
import com.codeclan.example.PirateService.repositories.PirateRepository;
import com.codeclan.example.PirateService.repositories.ShipRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PirateServiceApplicationTests {

	@Autowired
	PirateRepository pirateRepository;
	ShipRepository shipRepository;


	@Test
	public void contextLoads() {
	}

	@Test
	public void createPirateAndShip() {
		Ship ship = new Ship("The Flying Dutchman");
		shipRepository.save(ship);
		Pirate jack = new Pirate("Alasdair", "Carstairs", 29, ship);
		pirateRepository.save(jack);
	}
}
