package hi.place.service;

import hi.place.dto.price.PriceProfileResponseDto;
import hi.place.model.user.Price;

import java.util.List;

public interface PriceService {
    List<Price> getAllByUserId(Long id);

    List<PriceProfileResponseDto> getAllByTypeOfServiceIdAndUserId(Long typeOfServiceId, Long userId);

    Price addToUser(Price price);

    Price getById(Long id);

    Price update(Price price, Long previousPriceId);
}
