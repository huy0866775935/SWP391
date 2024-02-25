/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author huy08
 */
public class Student {
    String StudentID;
    String Name;
    String Dob;
    String Gender;
    String Phone;
    String Address;
    String AccountID;
    String Personal_ID;
    String P_Email;
    String StartDate;

    public Student(String StudentID, String Name, String Dob, String Gender, String Phone, String Address, String AccountID, String Personal_ID, String P_Email, String StartDate) {
        this.StudentID = StudentID;
        this.Name = Name;
        this.Dob = Dob;
        this.Gender = Gender;
        this.Phone = Phone;
        this.Address = Address;
        this.AccountID = AccountID;
        this.Personal_ID = Personal_ID;
        this.P_Email = P_Email;
        this.StartDate = StartDate;
    }

    public Student() {
    }

    public String getStudentID() {
        return StudentID;
    }

    public void setStudentID(String StudentID) {
        this.StudentID = StudentID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDob() {
        return Dob;
    }

    public void setDob(String Dob) {
        this.Dob = Dob;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getAccountID() {
        return AccountID;
    }

    public void setAccountID(String AccountID) {
        this.AccountID = AccountID;
    }

    public String getPersonal_ID() {
        return Personal_ID;
    }

    public void setPersonal_ID(String Personal_ID) {
        this.Personal_ID = Personal_ID;
    }

    public String getP_Email() {
        return P_Email;
    }

    public void setP_Email(String P_Email) {
        this.P_Email = P_Email;
    }

    public String getStartDate() {
        return StartDate;
    }

    public void setStartDate(String StartDate) {
        this.StartDate = StartDate;
    }
    
}
