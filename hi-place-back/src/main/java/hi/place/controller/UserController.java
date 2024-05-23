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
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RequestResponseMapper<UserRequestDto, UserResponseDto, User> userMapper;

    @GetMapping
    public ResponseEntity<User> getByEmail(@RequestParam String email) {
        return new ResponseEntity<>(userService.getByEmail(email), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Boolean> createNewUser(@RequestBody UserRequestDto newUser) {
        return new ResponseEntity<>(userService.createNewUser(
                userMapper.toModel(newUser)).getId() > 0, HttpStatus.CREATED);
    }
}
