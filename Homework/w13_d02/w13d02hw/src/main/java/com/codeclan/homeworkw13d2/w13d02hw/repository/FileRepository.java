package com.codeclan.homeworkw13d2.w13d02hw.repository;


import com.codeclan.homeworkw13d2.w13d02hw.models.File;
import com.codeclan.homeworkw13d2.w13d02hw.projections.EmbedFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(excerptProjection = EmbedFile.class)
public interface FileRepository extends JpaRepository<File, Long> {
}
