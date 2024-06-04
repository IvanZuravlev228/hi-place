package hi.place.service.impl;

import hi.place.dto.UserServiceImageResponseDto;
import hi.place.repository.UserServiceImagesRepository;
import hi.place.service.UserServiceImagesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImagesServiceImpl implements UserServiceImagesService {
    private final UserServiceImagesRepository userServiceImagesRepository;

    @Override
    public List<UserServiceImageResponseDto> getByUserAndTypeOfServiceId(Long typeOfServiceId, Long userId) {
        return userServiceImagesRepository.findUserServiceImageDtosByTypeOfService_IdAndUser_Id(typeOfServiceId, userId);
    }
}