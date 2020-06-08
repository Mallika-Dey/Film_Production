package edu.juniv.cse.entities;

import edu.juniv.cse.utils.USERINFO;

import java.util.Date;

public class Producer extends USERINFO{
    public Producer() {
    }

    public Producer(int ID, String name, String email, String gender, String password, Date dateofbirth) {
        super(ID, name, email, gender, password, dateofbirth);
    }
}
