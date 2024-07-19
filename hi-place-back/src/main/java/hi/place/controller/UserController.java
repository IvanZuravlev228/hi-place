package hi.place.controller;

import hi.place.dto.user.UserRequestDto;
import hi.place.dto.user.UserResponseDto;
import hi.place.model.user.User;
import hi.place.service.UserService;
import hi.place.service.mapper.RequestResponseMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
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

    @GetMapping("/email")
    public ResponseEntity<UserResponseDto> getByEmail(@RequestParam String email) {
        return new ResponseEntity<>(userMapper.toDto(userService.getByEmail(email)),
                HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<UserResponseDto> createNewUser(@RequestBody UserRequestDto newUser) {
        return new ResponseEntity<>(userMapper.toDto(userService.createNewUser(
                userMapper.toModel(newUser))), HttpStatus.CREATED);
    }

    @GetMapping("/all")
    public ResponseEntity<List<UserResponseDto>> getAllUsers() {
        return new ResponseEntity<>(userService.getAll()
                .stream()
                .map(userMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }

    @GetMapping("/type-of-service/city/{city}")
    public ResponseEntity<List<UserResponseDto>> getAllByTypeOfService(@RequestParam Long serviceTypeId,
                                                                       @PathVariable String city,
                                                                       @RequestParam(defaultValue = "type") String sortByType,
                                                                       @RequestParam(defaultValue = "true") Boolean sortByAtSalon,
                                                                       @RequestParam(defaultValue = "true") Boolean sortByHomeVisit,
                                                                       @RequestParam(defaultValue = "true") Boolean sortByOnlineCounseling,
                                                                       Pageable pageable) {

        return new ResponseEntity<>(userService.getAllByTypeOfServiceId(serviceTypeId,
                                                                        city,
                                                                        sortByType,
                                                                        sortByAtSalon,
                                                                        sortByHomeVisit,
                                                                        sortByOnlineCounseling,
                                                                        pageable)
                .stream()
                .map(userMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }

    @GetMapping("/main-service/city/{city}")
    public ResponseEntity<List<UserResponseDto>> getAllByMainTypeOfService(@RequestParam Long mainTypeOfServiceId,
                                                                           @PathVariable String city,
                                                                           Pageable pageable) {
        return new ResponseEntity<>(userService.getAllByMainTypeOfServiceId(mainTypeOfServiceId, city, pageable)
                .stream()
                .map(userMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }

    @GetMapping("/service-item/city/{city}")
    public ResponseEntity<List<UserResponseDto>> getAllByServiceItem(@RequestParam Long serviceItemId,
                                                                     @PathVariable String city,
                                                                     Pageable pageable) {
        return new ResponseEntity<>(userService.getAllByServiceItemId(serviceItemId, city, pageable)
                .stream()
                .map(userMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }

    @GetMapping("/{userId}")
    public ResponseEntity<UserResponseDto> getUserById(@PathVariable Long userId) {
        return new ResponseEntity<>(userMapper.toDto(userService.getById(userId)), HttpStatus.OK);
    }
}
