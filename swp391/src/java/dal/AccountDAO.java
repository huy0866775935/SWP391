/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author huy08
 */
public class AccountDAO extends DBContext {

    public boolean checkUser(String username, String password) {
        String sql = "Select * from [dbo].[Account] where Email = ? and Password = ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
    public Account getUser(String username, String password) {
        String sql = "Select * from [dbo].[Account] where Email = ? and Password = ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account acc = new Account(rs.getString("AccountID"), rs.getString("Email"), rs.getString("Password"), rs.getString("Role"));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean changePassword(String username, String password) {
        String sql = "UPDATE Account\n"
                + "SET Password = ?\n"
                + "WHERE Email = ?;";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, password);
            st.setString(2, username);
            ResultSet rs = st.executeQuery();
            st.executeUpdate();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

}
