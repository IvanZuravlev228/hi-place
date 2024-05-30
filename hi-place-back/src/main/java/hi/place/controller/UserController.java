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

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RequestResponseMapper<UserRequestDto, UserResponseDto, User> userMapper;

    @GetMapping
    public ResponseEntity<UserResponseDto> getByEmail(@RequestParam String email) {
        return new ResponseEntity<>(userMapper.toDto(userService.getByEmail(email)),
                HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Boolean> createNewUser(@RequestBody UserRequestDto newUser) {
        return new ResponseEntity<>(userService.createNewUser(
                userMapper.toModel(newUser)).getId() > 0, HttpStatus.CREATED);
    }

    @GetMapping("/all")
    public ResponseEntity<List<UserResponseDto>> getAllUsers() {
        return new ResponseEntity<>(userService.getAll()
                .stream()
                .map(userMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }
}
