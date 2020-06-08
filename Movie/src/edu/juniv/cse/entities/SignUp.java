package edu.juniv.cse.entities;

import edu.juniv.cse.utils.EmailValidator;

import java.sql.Struct;
import java.util.Date;
import java.util.Scanner;

public class SignUp {

    public SignUp() {
    }

    public boolean signup(int Role_ID, int id) {
        if (Role_ID < 100 || Role_ID > 107) {
            System.out.println("Invalid Id");
            return false;
        }

        Scanner input = new Scanner(System.in);
        System.out.print("NAME: ");
        String nam = input.nextLine();

        System.out.print("\nEMAIL: ");
        String mail = input.nextLine();

        System.out.print("\nGENDER: ");
        String gender = input.next();

        System.out.println("\nDATE_OF_BIRTH: ");
        Date dateofbirth = new Date();
        int val = input.nextInt();
        dateofbirth.setDate(val);
        val = input.nextInt();
        dateofbirth.setMonth(val);
        val = input.nextInt();
        dateofbirth.setYear(val);
        System.out.println();

        boolean again = false;
        EmailValidator email_check = new EmailValidator();
        while (true) {
            if (again) {
                System.out.print("\nEMAIL: ");
                mail = input.next();
            }

            if (email_check.checkvalid(mail)) {

                String pass = "**";
                String confirm_pass = " ";
                int lp=0;

                while (pass.compareTo(confirm_pass)!=0) {
                    if(lp>0) System.out.println("not match");
                    System.out.print("ENTER PASSWORD: ");
                    pass = input.next();
                    System.out.print("\nCONFIRM PASSWORD: ");
                    confirm_pass = input.next();
                    System.out.println();
                    lp=1;
                }

                if (Role_ID == 100) {
                    Director member = new Director(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 101) {
                    Producer member = new Producer(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 102) {
                    Actors member = new Actors(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 103) {
                    Costume member = new Costume(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 104) {
                    StoryWriter member = new StoryWriter(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 105) {
                    SoundMixer member = new SoundMixer(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 106) {
                    ScreenPlayWriter member = new ScreenPlayWriter(id, nam, mail, gender, pass, dateofbirth);
                } else if (Role_ID == 107) {
                    VfxManager member = new VfxManager(id, nam, mail, gender, pass, dateofbirth);
                }
                break;
            } else {
                System.out.println("INVALID EMAIL_ID");
                again = true;
                continue;
            }
        }
        return true;
    }
}
