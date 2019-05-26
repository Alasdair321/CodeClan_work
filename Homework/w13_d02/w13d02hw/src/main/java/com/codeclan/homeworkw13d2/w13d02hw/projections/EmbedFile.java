package com.codeclan.homeworkw13d2.w13d02hw.projections;

import com.codeclan.homeworkw13d2.w13d02hw.models.File;
import com.codeclan.homeworkw13d2.w13d02hw.models.Folder;
import org.springframework.data.rest.core.config.Projection;

@Projection(name = "embedAllForFolders", types = File.class)
public interface EmbedFile {
    public String getName();
    public String getExtension();
    public int getSize();
    public Folder getFolder();
}
