package hi.place.exception;

public class EmailAlreadyExistsException extends RuntimeException {
    public EmailAlreadyExistsException(String message, Exception e) {
        super(message);
    }
}
