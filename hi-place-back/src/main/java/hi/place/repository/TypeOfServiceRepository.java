package hi.place.repository;

import hi.place.dto.TypeOfServiceCountDto;
import hi.place.model.TypeOfService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TypeOfServiceRepository extends JpaRepository<TypeOfService, Long> {
    List<TypeOfService> findByMainType_Id(Long mainTypeId);

    @Query("SELECT new hi.place.dto.TypeOfServiceCountDto(p.typeOfService.id, p.typeOfService.name, COUNT(p.typeOfService.id)) " +
            "FROM Price p " +
            "where p.user.id = :userId  " +
            "GROUP BY p.typeOfService.id")

    List<TypeOfServiceCountDto> getTypeOfServiceAnfCountByUserId(@Param("userId") Long userId);
}
