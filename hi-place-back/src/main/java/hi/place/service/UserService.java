package hi.place.service;

import hi.place.model.user.User;

import java.util.List;

public interface UserService {
    User createNewUser(User user);

    User getByEmail(String email);

    User getById(Long id);

    List<User> getAll();

    List<User> getAllByMainTypeOfServiceId(Long mainTypeOfServiceId);

    List<User> getAllByTypeOfServiceId(Long typeOfServiceId);

    List<User> getAllByServiceItemId(Long serviceItemId);

    void addLogoUrlToUser(String logoUrl, Long userId);
}
