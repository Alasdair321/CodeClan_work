package com.codeclan.homeworkw13d2.w13d02hw.repository;


import com.codeclan.homeworkw13d2.w13d02hw.models.File;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FileRepository extends JpaRepository<File, Long> {
}
