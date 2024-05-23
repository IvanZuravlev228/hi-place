package hi.place.service;

import hi.place.model.user.Price;

import java.util.List;
import java.util.Optional;

public interface PriceService {
    List<Price> getAllByUser(String email);

    Price addToUser(Price price);

    Price getById(Long id);

    Price update(Price price, Long previousPriceId);
}
