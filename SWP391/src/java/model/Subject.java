/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author huy08
 */
public class Subject {
    int SubjectID;
    String Name;
    int SlotLearning;
    int Major;

    public Subject() {
    }

    public Subject(int SubjectID, String Name, int SlotLearning, int Major) {
        this.SubjectID = SubjectID;
        this.Name = Name;
        this.SlotLearning = SlotLearning;
        this.Major = Major;
    }

    public int getSubjectID() {
        return SubjectID;
    }

    public void setSubjectID(int SubjectID) {
        this.SubjectID = SubjectID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getSlotLearning() {
        return SlotLearning;
    }

    public void setSlotLearning(int SlotLearning) {
        this.SlotLearning = SlotLearning;
    }

    public int getMajor() {
        return Major;
    }

    public void setMajor(int Major) {
        this.Major = Major;
    }
    
}
