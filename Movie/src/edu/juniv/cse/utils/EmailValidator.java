package edu.juniv.cse.utils;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator {
    public static boolean checkvalid(String mail) {
        if (mail == null) return false;
        String str = "^[A-Za-z0-9]+(?:\\_"+"[a-zA-Z0-9]+)*(?:\\." + "[a-zA-Z0-9]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" + "A-Z]{2,7}$";
        Pattern pattern = Pattern.compile(str);
        return pattern.matcher(mail).matches();
    }
}
