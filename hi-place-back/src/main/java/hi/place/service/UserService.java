package hi.place.service;

import hi.place.model.user.User;

import java.util.List;

public interface UserService {
    User createNewUser(User user);
    User getByEmail(String email);

    User getById(Long id);

    List<User> getAll();
}
