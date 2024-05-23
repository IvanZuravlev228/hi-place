package hi.place.service.impl.user;

import hi.place.model.user.Price;
import hi.place.model.user.User;
import hi.place.repository.user.PriceRepository;
import hi.place.service.PriceService;
import hi.place.service.ServiceItemService;
import hi.place.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PriceServiceImpl implements PriceService {
    private final PriceRepository priceRepository;
    private final UserService userService;
    private final ServiceItemService serviceItemService;

    @Override
    public List<Price> getAllByUser(String email) {
        return priceRepository.getAllByUser_Email(email);
    }

    @Override
    public Price addToUser(Price price) {
        return priceRepository.save(price);
    }

    @Override
    public Price getById(Long id) {
        return priceRepository.findById(id).orElseThrow(() ->
                new RuntimeException("Can't find price by id: " + id));
    }

    @Override
    public Price update(Price price, Long previousPriceId) {
//        Price previous = getById(previousPriceId);
        price.setId(previousPriceId);
        return  priceRepository.save(price);
    }
}
