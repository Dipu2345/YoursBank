
package com.bank.user;

public class UserDetails {
    private int user_id;
    private String user_name;
    private String user_fname;
    private long user_mobile;
    private String gender;
    private String mail;
    private long addhar;
    private String pan;
    private String image;
    private int active;

    public UserDetails(String user_name, String user_fname, long user_mobile, String gender, String mail, long addhar, String pan,String image,int active) {
        this.user_name = user_name;
        this.user_fname = user_fname;
        this.user_mobile = user_mobile;
        this.gender = gender;
        this.mail = mail;
        this.addhar = addhar;
        this.pan = pan;
        this.image=image;
        this.active=active;
    }

    public UserDetails(int user_id, String user_name, String user_fname, long user_mobile, String gender, String mail, long addhar, String pan, String image,int active) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_fname = user_fname;
        this.user_mobile = user_mobile;
        this.gender = gender;
        this.mail = mail;
        this.addhar = addhar;
        this.pan = pan;
        this.image=image;
        this.active = active;
    }

    public UserDetails(String user_name, String user_fname, long user_mobile, String gender, String mail, long addhar, String pan, int active) {
        this.user_name = user_name;
        this.user_fname = user_fname;
        this.user_mobile = user_mobile;
        this.gender = gender;
        this.mail = mail;
        this.addhar = addhar;
        this.pan = pan;
        this.active = active;
    }
    
    public int getUser_id(){
        return user_id;
    }
    public void setUser_id(int user_id){
        this.user_id=user_id;
    }
    

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_fname() {
        return user_fname;
    }

    public void setUser_fname(String user_fname) {
        this.user_fname = user_fname;
    }

    public long getUser_mobile() {
        return user_mobile;
    }

    public void setUser_mobile(long user_mobile) {
        this.user_mobile = user_mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public long getAddhar() {
        return addhar;
    }

    public void setAddhar(long addhar) {
        this.addhar = addhar;
    }

    public String getPan() {
        return pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }
    public String getImage(){
        return image;
    }
    public void setImage(String image){
        this.image=image;
    }
    
}
