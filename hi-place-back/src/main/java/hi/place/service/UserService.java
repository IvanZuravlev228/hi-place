package hi.place.service;

import hi.place.model.user.User;

public interface UserService {
    User createNewUser(User user);
    User getByEmail(String email);

    User getById(Long id);
}
