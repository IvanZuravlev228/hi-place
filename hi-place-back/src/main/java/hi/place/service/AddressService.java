package hi.place.service;

import hi.place.model.address.Address;

public interface AddressService {
    Address save(Address address);

    Address getById(Long id);
}
