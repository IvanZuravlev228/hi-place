package hi.place.controller;

import hi.place.dto.user.UserLoginDto;
import hi.place.dto.user.UserRequestDto;
import hi.place.dto.user.UserResponseDto;
import hi.place.model.user.User;
import hi.place.security.jwt.JwtTokenProvider;
import hi.place.service.AuthenticationService;
import hi.place.service.UserService;
import hi.place.service.mapper.RequestResponseMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthenticationController {
    private final UserService userService;
    private final AuthenticationService authenticationService;
    private final JwtTokenProvider jwtTokenProvider;
    private final RequestResponseMapper<UserRequestDto, UserResponseDto, User> userMapper;

    @PostMapping("/login")
    public ResponseEntity<Object> login(@RequestBody UserLoginDto userLoginDto)
            throws RuntimeException {
        User user = authenticationService.login(
                userLoginDto.getEmail(), userLoginDto.getPassword());
        Set<User.UserType> roles = new HashSet<>();
        roles.add(user.getType());
        String token = jwtTokenProvider.createToken(user.getEmail(), roles);
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);
        return new ResponseEntity<>(tokenMap, HttpStatus.OK);
    }

    @PostMapping("/register")
    public ResponseEntity<UserResponseDto> createNewUser(@RequestBody UserRequestDto newUser) {
        return new ResponseEntity<>(userMapper.toDto(
                authenticationService.register(userMapper.toModel(newUser))), HttpStatus.CREATED);
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
