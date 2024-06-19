package hi.place.service.mapper;

import hi.place.dto.price.PriceRequestDto;
import hi.place.dto.price.PriceResponseDto;
import hi.place.model.user.Price;
import hi.place.service.ServiceItemService;
import hi.place.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class PriceMapper implements RequestResponseMapper<PriceRequestDto, PriceResponseDto, Price> {
    private final ServiceItemService serviceItemService;
    private final UserService userService;

    @Override
    public Price toModel(PriceRequestDto dto) {
        Price model = new Price();
        model.setServiceItem(serviceItemService.getById(dto.getServiceItemId()));
        model.setUser(userService.getByEmail(dto.getUserEmail()));
        model.setPrice(dto.getPrice());
        model.setTimeUnit(dto.getTimeUnit());
        return model;
    }

    @Override
    public PriceResponseDto toDto(Price model) {
        PriceResponseDto dto = new PriceResponseDto();
        dto.setId(model.getId());
        dto.setServiceItemId(model.getServiceItem().getId());
        dto.setTypeOfServiceId(model.getTypeOfService().getId());
//        dto.setMainTypeOfServiceId(model.getMainTypeOfService().getId());
        dto.setUserId(model.getUser().getId());
        dto.setPrice(model.getPrice());
        dto.setTimeUnit(model.getTimeUnit());
        return dto;
    }
}
