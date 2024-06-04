package hi.place.repository.user;

import hi.place.model.user.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> getUserByEmail(String email);

    @Query("SELECT DISTINCT u FROM Price p " +
            "JOIN p.user u " +
            "JOIN p.serviceItem si " +
            "WHERE si.id = :serviceItemId")
    List<User> findUsersByServiceItemId(@Param("serviceItemId") Long serviceItemId);

    @Query("SELECT DISTINCT u FROM Price p " +
            "JOIN p.user u " +
            "JOIN p.serviceItem si " +
            "JOIN si.typeOfService tos " +
            "WHERE tos.id = :typeOfServiceId")
    List<User> findUsersByTypeOfServiceId(@Param("typeOfServiceId") Long typeOfServiceId);

    @Query("SELECT DISTINCT u FROM Price p " +
            "JOIN p.user u " +
            "JOIN p.serviceItem si " +
            "JOIN si.typeOfService tos " +
            "JOIN tos.mainType mtos " +
            "WHERE mtos.id = :mainTypeOfServiceId")
    List<User> findUsersByMainTypeOfServiceId(@Param("mainTypeOfServiceId") Long mainTypeOfServiceId);
}
