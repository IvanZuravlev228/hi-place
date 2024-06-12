package hi.place.service.impl.user;

import hi.place.exception.EmailAlreadyExistsException;
import hi.place.model.user.User;
import hi.place.repository.user.UserRepository;
import hi.place.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    @Override
    public User createNewUser(User user) {
        try {
            return userRepository.save(user);
        } catch (DataIntegrityViolationException e) {
            throw new EmailAlreadyExistsException("Email already exists");
        }
    }

    @Override
    public User getByEmail(String email) {
        return userRepository.getUserByEmail(email).orElseThrow(() ->
                new RuntimeException("Can't find user by email: " + email));
    }

    @Override
    public User getById(Long id) {
        return userRepository.findById(id).orElseThrow(() ->
                new RuntimeException("Can't find user by id: " + id));
    }

    @Override
    public List<User> getAll() {
        return userRepository.findAll();
    }

    @Override
    public List<User> getAllByMainTypeOfServiceId(Long mainTypeOfServiceId) {
        return userRepository.findUsersByMainTypeOfServiceId(mainTypeOfServiceId);
    }

    @Override
    public List<User> getAllByTypeOfServiceId(Long typeOfServiceId) {
        return userRepository.findUsersByTypeOfServiceId(typeOfServiceId);
    }

    @Override
    public List<User> getAllByServiceItemId(Long serviceItemId) {
        return userRepository.findUsersByServiceItemId(serviceItemId);
    }

    @Override
    public void addLogoUrlToUser(String logoUrl, Long userId) {
        userRepository.addLogoUrlToUser(logoUrl, userId);
    }
}
