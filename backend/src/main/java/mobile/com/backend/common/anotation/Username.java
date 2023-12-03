package mobile.com.backend.common.anotation;


import javax.validation.Constraint;
import javax.validation.Payload;
import javax.validation.constraints.Pattern;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Pattern(regexp = "^[a-zA-Z0-9_]{6,}$", message = "Username must contain only letters, numbers, or underscores")
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {})
public @interface Username {
  String message() default "Invalid username";

  Class<?>[] groups() default {};

  Class<? extends Payload>[] payload() default {};
}
