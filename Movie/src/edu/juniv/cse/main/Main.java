package edu.juniv.cse.main;

import edu.juniv.cse.entities.DISPLAY;
import edu.juniv.cse.entities.LogIn;
import edu.juniv.cse.entities.SignUp;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        DISPLAY show = new DISPLAY();
        show.display();
        int roleid = input.nextInt();
        show.display1();
        int op = input.nextInt();
        System.out.println();
        if (op == 1)
        {
            int id=0;    //id unique kora lagbe.
            SignUp sign_up=new SignUp();
            sign_up.signup(roleid,id);
        }
        else if (op == 2)
        {
            int id=input.nextInt();
            LogIn log_in=new LogIn();
            log_in.login(roleid,id);
        }
    }
}
