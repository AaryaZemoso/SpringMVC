package springdemo.annotations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

    public String prefix;

    @Override
    public void initialize(CourseCode courseCode) {
        prefix = courseCode.value();
    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {

        boolean result = false;

        if(s != null)
            result = s.startsWith(prefix);

        else
            result = true;

        return result;
    }
}
