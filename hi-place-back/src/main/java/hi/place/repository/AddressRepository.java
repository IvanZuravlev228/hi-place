package hi.place.repository;

import hi.place.model.address.Address;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AddressRepository extends JpaRepository<Address, Long> {
    List<Address> getAllByUser_Id(Long userId);
}
