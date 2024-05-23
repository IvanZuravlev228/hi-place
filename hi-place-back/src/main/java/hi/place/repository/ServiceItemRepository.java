package hi.place.repository;

import hi.place.model.ServiceItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ServiceItemRepository extends JpaRepository<ServiceItem, Long> {
    List<ServiceItem> getByTypeOfService_Id(Long typeOfServiceId);
}
