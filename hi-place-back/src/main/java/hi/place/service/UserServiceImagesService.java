package hi.place.service;

import hi.place.dto.UserServiceImageResponseDto;
import hi.place.model.UserServiceImages;

import java.util.List;

public interface UserServiceImagesService {
    List<UserServiceImageResponseDto> getByUserAndTypeOfServiceId(Long typeOfServiceId, Long userId);
}
