package hi.place.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ExceptionDto {
    private String message;
    private LocalDateTime time;
}
