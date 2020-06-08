package edu.juniv.cse.entities;

import edu.juniv.cse.utils.USERINFO;

import java.util.Date;

public class StoryWriter extends USERINFO{
    public StoryWriter() {
    }

    public StoryWriter(int ID, String name, String email, String gender, String password, Date dateofbirth) {
        super(ID, name, email, gender, password, dateofbirth);
    }
}
