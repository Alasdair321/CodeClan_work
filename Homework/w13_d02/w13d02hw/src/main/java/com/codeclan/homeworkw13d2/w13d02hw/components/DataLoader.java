package com.codeclan.homeworkw13d2.w13d02hw.components;

import com.codeclan.homeworkw13d2.w13d02hw.models.File;
import com.codeclan.homeworkw13d2.w13d02hw.models.Folder;
import com.codeclan.homeworkw13d2.w13d02hw.models.User;
import com.codeclan.homeworkw13d2.w13d02hw.repository.FileRepository;
import com.codeclan.homeworkw13d2.w13d02hw.repository.FolderRepository;
import com.codeclan.homeworkw13d2.w13d02hw.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component

public class DataLoader implements ApplicationRunner {

    @Autowired
    UserRepository userRepository;

    @Autowired
    FolderRepository folderRepository;

    @Autowired
    FileRepository fileRepository;

    public DataLoader() {
    }

    @Override
    public void run(ApplicationArguments args) {

        User user = new User("Kev");
        userRepository.save(user);

        Folder folder = new Folder("folder", user);
        folderRepository.save(folder);

        File file = new File("file", ".txt", 123, folder);
        fileRepository.save(file);

        folder.addFile(file);
        folderRepository.save(folder);

        user.addFolder(folder);
        userRepository.save(user);

    }
}
