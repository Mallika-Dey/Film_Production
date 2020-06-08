package edu.juniv.cse.utils;

import javax.print.DocFlavor;
import java.util.Calendar;
import java.util.Date;

public class USERINFO {
    private int ID;
    private String Name;
    private String email;
    private String gender;
    private String password;
    private Date dateofbirth;
    private int age;

    public USERINFO() {
        ID = age = 0;
        Name = null;
        email = null;
        gender = null;
        dateofbirth = null;
    }

    public USERINFO(int ID, String name, String email, String gender, String password, Date dateofbirth) {
        this.ID = ID;
        Name = name;
        this.email = email;
        this.gender = gender;
        this.password = password;
        this.dateofbirth = dateofbirth;
        this.age = calculateage(dateofbirth);
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(Date dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private int calculateage(Date dateofbirth) {
        Calendar DOB = Calendar.getInstance();
        Calendar today = Calendar.getInstance();
        DOB.setTime(dateofbirth);
        int age = DOB.get(Calendar.YEAR) - today.get(Calendar.YEAR);
        if (DOB.get(Calendar.MONTH) > today.get(Calendar.MONTH)) age--;
        else if (DOB.get(Calendar.MONTH) == today.get(Calendar.MONTH)) {
            if (DOB.get(Calendar.DAY_OF_MONTH) > today.get(Calendar.DAY_OF_MONTH)) age--;
        }
        return age;
    }

    public int getAge() {
        return age;
    }

    @Override
    public String toString() {
        return "USERINFO{" +
                "ID=" + ID +
                ", Name='" + Name + '\'' +
                ", email='" + email + '\'' +
                ", gender='" + gender + '\'' +
                ", dateofbirth=" + dateofbirth +
                ", age=" + age +
                '}';
    }
}
