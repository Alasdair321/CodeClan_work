package com.codeclan.homeworkw13d2.w13d02hw.repository;

import com.codeclan.homeworkw13d2.w13d02hw.models.Folder;
import com.codeclan.homeworkw13d2.w13d02hw.projections.EmbedUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(excerptProjection = EmbedUser.class)
public interface FolderRepository extends JpaRepository<Folder, Long> {
}
