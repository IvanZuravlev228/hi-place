package hi.place.controller;

import hi.place.dto.price.PriceRequestDto;
import hi.place.dto.price.PriceResponseDto;
import hi.place.model.user.Price;
import hi.place.service.PriceService;
import hi.place.service.mapper.RequestResponseMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/price")
@RequiredArgsConstructor
public class PriceController {
    private final PriceService priceService;
    private final RequestResponseMapper<PriceRequestDto, PriceResponseDto, Price> priceMapper;

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<PriceResponseDto>> getAllByUser(@PathVariable Long userId) {
        return new ResponseEntity<>(priceService.getAllByUserId(userId)
                .stream()
                .map(priceMapper::toDto)
                .collect(Collectors.toList()), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Boolean> addPriceToUser(@RequestBody PriceRequestDto price) {
        return new ResponseEntity<>(priceService.addToUser(priceMapper.toModel(price)).getId() > 0,
                HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<Boolean> updatePrice(@RequestBody PriceRequestDto price,
                                               @RequestParam Long previousPriceId) {
        return new ResponseEntity<>(priceService.update(priceMapper.toModel(price), previousPriceId).getId() > 0, HttpStatus.OK);
    }
}
