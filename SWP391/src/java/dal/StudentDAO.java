/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.Student;

/**
 *
 * @author huy08
 */
public class StudentDAO extends DBContext{
    public Student getStudentInfo(String AccountID) throws SQLException{
        String sql = "Select StudentID,Name,Dob,Gender,Phone,Address,Student.AccountID,Personal_ID,P_Email,StartDate from ACCOUNT join STUDENT on ACCOUNT.AccountID=STUDENT.AccountID where ACCOUNT.AccountID= ? ";
        PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, AccountID);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Student st= new Student();
                st.setStudentID(rs.getString("StudentID"));
                st.setName(rs.getString("Name"));
                Date Dob = rs.getDate("Dob");
                st.setDob(Dob.toString());
                String Gender = "Female";
                if(rs.getBoolean("Gender")){
                    Gender = "Male";
                }
                st.setGender(Gender);
                st.setPhone(rs.getString("Phone"));
                st.setAddress(rs.getString("Address"));
                st.setAccountID(rs.getString("AccountID"));
                st.setPersonal_ID(rs.getString("Personal_ID"));
                st.setP_Email(rs.getString("P_Email"));
                Date StartDate = rs.getDate("StartDate");
                st.setStartDate(StartDate.toString()); 
                return st;
            }
            return null;
}
}
