package hi.place.controller;

import hi.place.dto.UserServiceImageResponseDto;
import hi.place.model.UserServiceImages;
import hi.place.service.UserServiceImagesService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/images")
@RequiredArgsConstructor
public class UserServiceImagesController {
    private final UserServiceImagesService userServiceImagesService;

    @GetMapping
    public ResponseEntity<List<UserServiceImageResponseDto>> getImagesByTypeOfServiceAndUserId(@RequestParam Long typeOfServiceId,
                                                                                     @RequestParam Long userId) {
        return new ResponseEntity<>(userServiceImagesService.getByUserAndTypeOfServiceId(userId, typeOfServiceId), HttpStatus.OK);
    }
}
