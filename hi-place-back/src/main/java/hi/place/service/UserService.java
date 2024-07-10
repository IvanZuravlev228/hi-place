package hi.place.service;

import hi.place.model.user.User;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface UserService {
    User createNewUser(User user);

    User getByEmail(String email);

    User getById(Long id);

    List<User> getAll();

    List<User> getAllByMainTypeOfServiceId(Long mainTypeOfServiceId, String city, Pageable pageable);

    List<User> getAllByTypeOfServiceId(Long typeOfServiceId, String city, Pageable pageable);

    List<User> getAllByServiceItemId(Long serviceItemId, String city, Pageable pageable);

    void addLogoUrlToUser(String logoUrl, Long userId);
}
