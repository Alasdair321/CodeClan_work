package com.codeclan.homeworkw13d2.w13d02hw.projections;

import com.codeclan.homeworkw13d2.w13d02hw.models.File;
import com.codeclan.homeworkw13d2.w13d02hw.models.Folder;
import com.codeclan.homeworkw13d2.w13d02hw.models.User;
import org.springframework.data.rest.core.config.Projection;

import java.util.ArrayList;

@Projection(name = "embedUser", types = Folder.class)

public interface EmbedUser {
    String getTitle();
    ArrayList<File> getFiles();
    User getUser();
}
