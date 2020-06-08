package edu.juniv.cse.entities;


import edu.juniv.cse.utils.USERINFO;

import java.util.Date;

public class Actors extends USERINFO {
    public Actors() {
    }

    public Actors(int ID, String name, String email, String gender, String password, Date dateofbirth) {
        super(ID, name, email, gender, password, dateofbirth);
    }
}
