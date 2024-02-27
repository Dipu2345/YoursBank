
package com.bank.user;

import java.sql.Timestamp;


public class AtmDetails {
    
    private int  atm_id;
    private int user_id;
    private long account_no;
    private long atm_no;
    private int cvv;

    public AtmDetails(int atm_id, int user_id, long account_no, long atm_no, int cvv, Timestamp atm_apply_date, Timestamp atm_expiry_date, int atmp_pin) {
        this.atm_id = atm_id;
        this.user_id = user_id;
        this.account_no = account_no;
        this.atm_no = atm_no;
        this.cvv = cvv;
        this.atm_apply_date = atm_apply_date;
        this.atm_expiry_date = atm_expiry_date;
        this.atmp_pin = atmp_pin;
    }

    public AtmDetails(int atm_id, int user_id, long account_no, long atm_no, int cvv, Timestamp atm_apply_date, int atmp_pin) {
        this.atm_id = atm_id;
        this.user_id = user_id;
        this.account_no = account_no;
        this.atm_no = atm_no;
        this.cvv = cvv;
        this.atm_apply_date = atm_apply_date;
        this.atmp_pin = atmp_pin;
    }
    private Timestamp atm_apply_date;
    private Timestamp atm_expiry_date;
    private int atmp_pin;

    public int getAtm_id() {
        return atm_id;
    }

    public void setAtm_id(int atm_id) {
        this.atm_id = atm_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public long getAccount_no() {
        return account_no;
    }

    public void setAccount_no(long account_no) {
        this.account_no = account_no;
    }

    public long getAtm_no() {
        return atm_no;
    }

    public void setAtm_no(long atm_no) {
        this.atm_no = atm_no;
    }

    public int getCvv() {
        return cvv;
    }

    public void setCvv(int cvv) {
        this.cvv = cvv;
    }

    public Timestamp getAtm_apply_date() {
        return atm_apply_date;
    }

    public void setAtm_apply_date(Timestamp atm_apply_date) {
        this.atm_apply_date = atm_apply_date;
    }

    public Timestamp getAtm_expiry_date() {
        return atm_expiry_date;
    }

    public void setAtm_expiry_date(Timestamp atm_expiry_date) {
        this.atm_expiry_date = atm_expiry_date;
    }

    public int getAtmp_pin() {
        return atmp_pin;
    }

    public void setAtmp_pin(int atmp_pin) {
        this.atmp_pin = atmp_pin;
    }
    
    
}
