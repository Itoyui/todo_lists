package models;

import java.util.ArrayList;
import java.util.List;

public class TodoValidator {

    public static List<String> validate(Todo m) {
        List<String> errors = new ArrayList<String>();

        String message_error = validateMessage(m.getMessage());
        if(!message_error.equals("")) {
            errors.add(message_error);
        }


        return errors;
    }

    private static String validateMessage(String message) {
        if(message == null || message.equals("")) {
            return "ToDoを入力してください。";
        }
        return "";
    }
}
