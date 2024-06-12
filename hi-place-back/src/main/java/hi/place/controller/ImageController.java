package hi.place.controller;

import hi.place.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/images")
@CrossOrigin(origins = "http://localhost:4200")
@RequiredArgsConstructor
public class ImageController {
    private static final String SERVER_URL = "http://localhost:8080";

    private final UserService userService;

    @PostMapping
    public ResponseEntity<String> uploadImage(@RequestParam("file") MultipartFile file,
                                              @RequestParam Long userId) {
        try {
            String uploadPath = "src/main/resources/static/images/" + userId + "/";

            File directory = new File(uploadPath);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            String fileName = file.getOriginalFilename();
            Path path = Paths.get(uploadPath + fileName);

            Files.copy(file.getInputStream(), path);

            String openPath = SERVER_URL + "/images/" + userId + "/" + fileName;
            userService.addLogoUrlToUser(openPath, userId);

            return new ResponseEntity<>("File upload successfully: " + fileName, HttpStatus.OK);

        } catch (IOException e) {
            return new ResponseEntity<>("Failed to upload file", HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (MaxUploadSizeExceededException e) {
            return new ResponseEntity<>("Max upload size exceeded", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
