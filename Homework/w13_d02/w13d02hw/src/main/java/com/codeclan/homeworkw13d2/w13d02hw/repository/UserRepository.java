package com.codeclan.homeworkw13d2.w13d02hw.repository;

import com.codeclan.homeworkw13d2.w13d02hw.models.User;
import com.codeclan.homeworkw13d2.w13d02hw.projections.EmbedFolder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(   excerptProjection = EmbedFolder.class)
public interface UserRepository extends JpaRepository<User,Long> {
}
