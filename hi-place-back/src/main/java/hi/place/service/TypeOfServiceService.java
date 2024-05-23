package hi.place.service;

import hi.place.model.TypeOfService;

import java.util.List;

public interface TypeOfServiceService {
    List<TypeOfService> getAll();

    List<TypeOfService> getByMainTypeId(Long mainTypeId);
}
