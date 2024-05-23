package hi.place.repository.user;

import hi.place.model.user.Price;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PriceRepository extends JpaRepository<Price, Long> {
    List<Price> getAllByUser_Email(String email);
}
