package hi.place.repository;

import hi.place.model.TypeOfService;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TypeOfServiceRepository extends JpaRepository<TypeOfService, Long> {
    List<TypeOfService> findByMainType_Id(Long mainTypeId);
}
