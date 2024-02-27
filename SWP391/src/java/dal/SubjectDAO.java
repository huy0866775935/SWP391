/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Subject;

/**
 *
 * @author huy08
 */
public class SubjectDAO extends DBContext {

    public ArrayList<Subject> getSubject(String[] major) throws SQLException {
        ArrayList<Subject> subject = new ArrayList<>();
        String sql = "SELECT SubjectCode,Subject2.Name,SlotLearning FROM Subject2 INNER JOIN Major2  ON Subject2.MajorCode = Major2.MajorCode";
//        boolean check =false;
//        for (int i = 0; i < major.length; i++) {
//            if (major[i].equals("all")) {
//                check = true;
//                sql = "SELECT SubjectCode,Subject2.Name,SlotLearning\n"
//                + "FROM Subject2\n"
//                + "INNER JOIN Major2  ON Subject2.MajorCode = Major2.MajorCode";
//            }
//        }
//        
//        if(check!=true){
//             sql = sql + "where Major2.MajorCode = '" + major[0] + "'";
//                for (int i = 1; i < major.length; i++) {
//                    sql = sql + "' or Major2.MajorCode='" + major[i] + "'";
//                }
//        }
//               

        PreparedStatement stm = connection.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            Subject s = new Subject(rs.getString("SubjectCode"), rs.getString("Name"), rs.getInt("SlotLearning"));
            
            
            
                                 
            subject.add(s);
        }
        return subject;

    }
}
