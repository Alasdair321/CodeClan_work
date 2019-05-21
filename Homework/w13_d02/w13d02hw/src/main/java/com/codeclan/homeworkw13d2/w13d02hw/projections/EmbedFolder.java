package com.codeclan.homeworkw13d2.w13d02hw.projections;

import com.codeclan.homeworkw13d2.w13d02hw.models.Folder;
import com.codeclan.homeworkw13d2.w13d02hw.models.User;
import org.springframework.data.rest.core.config.Projection;

import java.util.ArrayList;

@Projection(name = "embedFolder", types = User.class)
public interface EmbedFolder {
    String getName();
    ArrayList<Folder> getFolders();
}
