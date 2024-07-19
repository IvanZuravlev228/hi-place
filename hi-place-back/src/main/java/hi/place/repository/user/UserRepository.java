package hi.place.repository.user;

import hi.place.model.user.User;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> getUserByEmail(String email);

//    @Query("SELECT DISTINCT u FROM Price p " +
//            "JOIN p.user u " +
//            "JOIN p.serviceItem si " +
//            "WHERE si.id = :serviceItemId")
//    List<User> findUsersByServiceItemId(@Param("serviceItemId") Long serviceItemId, Pageable pageable);

    @Query(value = "SELECT DISTINCT u.* FROM price p " +
            "JOIN user u ON p.user_id = u.id " +
            "JOIN address a ON u.id = a.user_id " +
            "JOIN service_item si ON p.service_item_id = si.id " +
            "WHERE si.id = :serviceItemId " +
            "AND a.city = :city", nativeQuery = true)
    List<User> findUsersByServiceItemId(@Param("serviceItemId") Long serviceItemId,
                                        @Param("city") String city,
                                        Pageable pageable);



    @Query(value = "SELECT DISTINCT u.* FROM price p " +
            "JOIN user u ON p.user_id = u.id " +
            "JOIN address a ON u.id = a.user_id " +
            "JOIN service_item si ON p.service_item_id = si.id " +
            "JOIN type_of_service tos ON si.type_of_service_id = tos.id " +
            "WHERE tos.id = :typeOfServiceId " +
            "AND a.city = :city " +
            "AND (" +
            "u.at_salon = :sortByAtSalon " +
            "OR u.home_visit = :sortByHomeVisit " +
            "OR u.online_counseling = :sortByOnlineCounseling " +
            ")  " +
            "ORDER BY " +
            "    CASE WHEN u.type = :sortByType THEN 1 ELSE 2 END, " +
            "    u.at_salon DESC, " +
            "    u.home_visit DESC, " +
            "    u.online_counseling DESC; ", nativeQuery = true)
    List<User> findUsersByTypeOfServiceIdAndCity(@Param("typeOfServiceId") Long typeOfServiceId,
                                                 @Param("city") String city,
                                                 @Param("sortByType") String sortByType,
                                                 @Param("sortByAtSalon") Boolean sortByAtSalon,
                                                 @Param("sortByHomeVisit") Boolean sortByHomeVisit,
                                                 @Param("sortByOnlineCounseling") Boolean sortByOnlineCounseling,
                                                 Pageable pageable);

    @Query(value = "SELECT DISTINCT u.* FROM price p " +
            "JOIN user u ON p.user_id = u.id " +
            "JOIN address a ON u.id = a.user_id " +
            "JOIN service_item si ON p.service_item_id = si.id " +
            "JOIN type_of_service tos ON si.type_of_service_id = tos.id " +
            "JOIN main_type_of_service mtos ON tos.main_type_id = mtos.id " +
            "WHERE mtos.id = :mainTypeOfServiceId " +
            "AND a.city = :city", nativeQuery = true)
    List<User> findUsersByMainTypeOfServiceId(@Param("mainTypeOfServiceId") Long mainTypeOfServiceId,
                                              @Param("city") String city,
                                              Pageable pageable);

//    @Query("SELECT DISTINCT u FROM Price p " +
//            "JOIN p.user u " +
//            "JOIN p.serviceItem si " +
//            "JOIN si.typeOfService tos " +
//            "JOIN tos.mainType mtos " +
//            "WHERE mtos.id = :mainTypeOfServiceId")
//    List<User> findUsersByMainTypeOfServiceId(@Param("mainTypeOfServiceId") Long mainTypeOfServiceId,
//                                              @Param("city") String city,
//                                              Pageable pageable);

    //    @Query("SELECT DISTINCT u FROM Price p " +
//            "JOIN p.user u " +
//            "JOIN p.serviceItem si " +
//            "JOIN si.typeOfService tos " +
//            "WHERE tos.id = :typeOfServiceId " +
//            "AND a.city = :city")
//    List<User> findUsersByTypeOfServiceIdAndCity(@Param("typeOfServiceId") Long typeOfServiceId,
//                                                 @Param("city") String city,
//                                                 Pageable pageable);

    @Modifying
    @Transactional
    @Query("update User u set u.logoURL = :logoURL where u.id = :userId")
    void addLogoUrlToUser(@Param("logoURL") String logoURL, @Param("userId") Long userId);
}
