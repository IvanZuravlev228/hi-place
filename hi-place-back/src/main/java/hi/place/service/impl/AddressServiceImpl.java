package hi.place.service.impl;

import hi.place.model.address.Address;
import hi.place.repository.AddressRepository;
import hi.place.service.AddressService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AddressServiceImpl implements AddressService {
    private final AddressRepository addressRepository;

    @Override
    public Address save(Address address) {
        return addressRepository.save(address);
    }

    @Override
    public Address getById(Long id) {
        return addressRepository.findById(id).orElseThrow(() ->
                new RuntimeException("Can't find address with id: " + id)
        );
    }

    @Override
    public List<Address> getByUserId(Long userId) {
        return addressRepository.getAllByUser_Id(userId);
    }
}
