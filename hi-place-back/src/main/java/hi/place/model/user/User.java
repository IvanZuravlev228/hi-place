package hi.place.model.user;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class User {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Long id;
    private String name;
    private String email;
    private String logoURL;
    private Double experience;
    private String phone;
    private String tiktokLink;
    private String instagramLink;
    private String telegramLink;
    private String viberLink;
    private Boolean homeVisit;
    private Boolean onlineCounseling;
    private Boolean atSalon;
    private Integer discountWithPromo = 0;
    @Enumerated(EnumType.STRING)
    private UserType type;
    private Double avg;

    public enum UserType {
        SALON, MASTER
    }
}
