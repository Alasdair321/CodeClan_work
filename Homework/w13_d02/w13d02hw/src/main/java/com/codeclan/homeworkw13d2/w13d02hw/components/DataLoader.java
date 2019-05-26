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
    private UserRepository userRepository;

    @Autowired
    private FolderRepository folderRepository;

    @Autowired
    private FileRepository fileRepository;

    public DataLoader() {
    }

    public void run(ApplicationArguments args) {

        User grace = new User("Grace");
        userRepository.save(grace);

        Folder java = new Folder("Java Work", grace);
        folderRepository.save(java);

        File java1 = new File("HelloWorld", ".java", 10, java);
        fileRepository.save(java1);

        File java2 = new File("SpringApp", ".java", 100, java);
        fileRepository.save(java2);

        Folder python = new Folder("Python Work", grace);
        folderRepository.save(python);

        File python1 = new File("hello_world", ".py", 5, java);
        fileRepository.save(python1);

        File python2 = new File("data_app", ".py", 15, java);
        fileRepository.save(python2);


        User ada = new User("Ada");
        userRepository.save(ada);

        Folder adaWork = new Folder("Ada Work", ada);
        folderRepository.save(adaWork);

        File ada1 = new File ("hello", ".adb", 10, adaWork);
        fileRepository.save(ada1);

        File ada2 = new File ("binarySort", ".adb", 50, adaWork);
        fileRepository.save(ada2);

        Folder cSharp = new Folder("C Sharp", ada);
        folderRepository.save(cSharp);

        File csharp = new File("HelloWorld", ".cs", 20, cSharp);
        fileRepository.save(csharp);

    }
}

