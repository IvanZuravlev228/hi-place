package hi.place.dto.price;

import lombok.Data;

@Data
public class PriceRequestDto {
    private Long serviceItemId;
    private String userEmail;
    private Double price;
    private String timeUnit;
}
