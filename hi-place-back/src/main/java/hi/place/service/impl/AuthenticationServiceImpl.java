package hi.place.service.impl;

import java.util.NoSuchElementException;
import java.util.UUID;

import hi.place.exception.EmailAlreadyExistsException;
import hi.place.exception.InvalidCredentialsException;
import hi.place.model.user.User;
import hi.place.repository.user.UserRepository;
import hi.place.service.AuthenticationService;
import jakarta.mail.MessagingException;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationServiceImpl implements AuthenticationService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final EmailService emailService;

    @Override
    public User register(User user) {
        try {
            String token = UUID.randomUUID().toString();
            user.setVerificationToken(token);
            String confirmationUrl = "http://localhost:4200/confirm-email?token=" + token;
            String htmlContent = "<html>" +
                    "<body>" +
                    "<h1>Confirm your email</h1>" +
                    "<p>Please click the link below to confirm your email:</p>" +
                    "<a href=\"" + confirmationUrl + "\">Confirm Email</a>" +
                    "<style>" +
                    "body { font-family: Arial, sans-serif; }" +
                    "h1 { color: #333; }" +
                    "p { font-size: 16px; }" +
                    "a { background-color: #008CBA; color: white; padding: 10px 20px; text-decoration: none; }" +
                    "a:hover { background-color: #005f6b; }" +
                    "</style>" +
                    "</body>" +
                    "</html>";
            emailService.sendEmail(user.getEmail(), "Confirm your email", htmlContent);

            user.setPassword(passwordEncoder.encode(user.getPassword()));
            return userRepository.save(user);
        } catch (DataIntegrityViolationException e) {
            throw new EmailAlreadyExistsException("Email already exists", e);
        } catch (MessagingException e) {
            throw new RuntimeException("Something went wrong while send email", e);
        }
    }

    @Override
    public User login(String login, String password) throws RuntimeException {
        User user = userRepository.getUserByEmail(login).orElseThrow(() ->
                new NoSuchElementException("Can't find user by login: " + login));
        if (!passwordEncoder.matches(password, user.getPassword())) {
            throw new InvalidCredentialsException("Incorrect username or password");
        }
        return user;
    }
}