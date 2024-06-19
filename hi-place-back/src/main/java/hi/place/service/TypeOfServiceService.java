package hi.place.service;

import hi.place.dto.TypeOfServiceCountDto;
import hi.place.model.TypeOfService;

import java.util.List;

public interface TypeOfServiceService {
    List<TypeOfService> getAll();

    List<TypeOfService> getByMainTypeId(Long mainTypeId);

    List<TypeOfServiceCountDto> getTypeOfServiceCountByUserId(Long userId);
}
