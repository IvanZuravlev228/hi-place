package hi.place.service.impl.user;

import hi.place.exception.EmailAlreadyExistsException;
import hi.place.model.user.User;
import hi.place.repository.user.UserRepository;
import hi.place.service.UserService;
import hi.place.service.impl.EmailService;
import jakarta.mail.MessagingException;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final EmailService emailService;

//    @Override
//    public User createNewUser(User user) {
//        try {
//            String token = UUID.randomUUID().toString();
//            user.setVerificationToken(token);
//            String confirmationUrl = "http://localhost:4200/confirm-email?token=" + token;
//            String htmlContent = "<html>" +
//                    "<body>" +
//                    "<h1>Confirm your email</h1>" +
//                    "<p>Please click the link below to confirm your email:</p>" +
//                    "<a href=\"" + confirmationUrl + "\">Confirm Email</a>" +
//                    "<style>" +
//                    "body { font-family: Arial, sans-serif; }" +
//                    "h1 { color: #333; }" +
//                    "p { font-size: 16px; }" +
//                    "a { background-color: #008CBA; color: white; padding: 10px 20px; text-decoration: none; }" +
//                    "a:hover { background-color: #005f6b; }" +
//                    "</style>" +
//                    "</body>" +
//                    "</html>";
//            emailService.sendEmail(user.getEmail(), "Confirm your email", htmlContent);
//
//            return userRepository.save(user);
//        } catch (DataIntegrityViolationException e) {
//            throw new EmailAlreadyExistsException("Email already exists", e);
//        } catch (MessagingException e) {
//            throw new RuntimeException("Something went wrong while send email", e);
//        }
//    }

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
    public List<User> getAllByMainTypeOfServiceId(Long mainTypeOfServiceId, String city, Pageable pageable) {
        return userRepository.findUsersByMainTypeOfServiceId(mainTypeOfServiceId, city, pageable);
    }

    @Override
    public List<User> getAllByTypeOfServiceId(Long typeOfServiceId,
                                              String city,
                                              String sortByType,
                                              Boolean sortByAtSalon,
                                              Boolean sortByHomeVisit,
                                              Boolean sortByOnlineCounseling,
                                              Pageable pageable) {
        return userRepository.findUsersByTypeOfServiceIdAndCity(typeOfServiceId,
                                                                city,
                                                                sortByType,
                                                                sortByAtSalon,
                                                                sortByHomeVisit,
                                                                sortByOnlineCounseling,
                                                                pageable);
    }

    @Override
    public List<User> getAllByServiceItemId(Long serviceItemId, String city, Pageable pageable) {
        return userRepository.findUsersByServiceItemId(serviceItemId, city, pageable);
    }

    @Override
    public void addLogoUrlToUser(String logoUrl, Long userId) {
        userRepository.addLogoUrlToUser(logoUrl, userId);
    }

    @Override
    public boolean confirmEmail(String token) {
        User user = userRepository.findByVerificationToken(token);
        if (user != null) {
            user.setEmailVerified(true);
            user.setVerificationToken(null);
            userRepository.save(user);
            return true;
        }
        return false;
    }
}
