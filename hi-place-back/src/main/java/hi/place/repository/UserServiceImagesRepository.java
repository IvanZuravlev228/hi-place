package hi.place.repository;

import hi.place.dto.UserServiceImageResponseDto;
import hi.place.model.UserServiceImages;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserServiceImagesRepository extends JpaRepository<UserServiceImages, Long> {
    @Query("select new hi.place.dto.UserServiceImageResponseDto(usi.id, tos.id, u.id, usi.path) from UserServiceImages usi " +
            "join usi.typeOfService tos " +
            "join usi.user u " +
            "where tos.id = :typeOfServiceId and u.id = :userId")
    List<UserServiceImageResponseDto> findUserServiceImageDtosByTypeOfService_IdAndUser_Id(@Param("typeOfServiceId") Long typeOfServiceId,
                                                                                           @Param("userId") Long userId);
}
