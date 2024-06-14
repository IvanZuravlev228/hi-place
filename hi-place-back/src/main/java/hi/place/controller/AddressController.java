package hi.place.controller;

import hi.place.dto.address.AddressRequestDto;
import hi.place.dto.address.AddressResponseDto;
import hi.place.model.address.Address;
import hi.place.service.AddressService;
import hi.place.service.mapper.RequestResponseMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/address")
@RequiredArgsConstructor
public class AddressController {
    private final AddressService addressService;
    private final RequestResponseMapper<AddressRequestDto, AddressResponseDto, Address> addressMapper;

    @PostMapping
    public ResponseEntity<AddressResponseDto> saveNewAddress(@RequestBody AddressRequestDto addressRequestDto) {
        return new ResponseEntity<>(addressMapper.toDto(addressService.save(addressMapper.toModel(addressRequestDto))),
                HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<AddressResponseDto> getAddressById(@PathVariable Long id) {
        return new ResponseEntity<>(addressMapper.toDto(addressService.getById(id)), HttpStatus.OK);
    }

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<AddressResponseDto>> getAllByUserId(@PathVariable Long userId) {
        return new ResponseEntity<>(addressService.getByUserId(userId)
                .stream()
                .map(addressMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }
}
