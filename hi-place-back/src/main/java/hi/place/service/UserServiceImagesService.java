package hi.place.service;

import hi.place.dto.UserServiceImageResponseDto;

import java.util.List;

public interface UserServiceImagesService {
    List<UserServiceImageResponseDto> getByTypeOfServiceAndUserId(Long typeOfServiceId, Long userId);

    List<UserServiceImageResponseDto> getByMainTypeOfServiceAndUserId(Long mainTypeOfService, Long userId);
}
