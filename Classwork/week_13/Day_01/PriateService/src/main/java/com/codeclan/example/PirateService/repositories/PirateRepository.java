package com.codeclan.example.PriateService.repositories;

import com.codeclan.example.PriateService.models.Pirate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PirateRepository extends JpaRepository<Pirate, Long> {
}
