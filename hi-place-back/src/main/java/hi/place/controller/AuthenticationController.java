package hi.place.controller;

import hi.place.dto.user.UserRequestDto;
import hi.place.dto.user.UserResponseDto;
import hi.place.model.user.User;
import hi.place.service.UserService;
import hi.place.service.mapper.RequestResponseMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthenticationController {
    private final UserService userService;
    private final RequestResponseMapper<UserRequestDto, UserResponseDto, User> userMapper;

    @GetMapping("/login")
    public ResponseEntity<String> login() {
        return null;
    }

    @PostMapping("/register")
    public ResponseEntity<UserResponseDto> createNewUser(@RequestBody UserRequestDto newUser) {
        return new ResponseEntity<>(userMapper.toDto(
                userService.createNewUser(userMapper.toModel(newUser))), HttpStatus.CREATED);
    }


    @GetMapping("/confirm-email")
    public ResponseEntity<String> confirmEmail(@RequestParam String token) {
        boolean isConfirmed = userService.confirmEmail(token);
        if (isConfirmed) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }
}
