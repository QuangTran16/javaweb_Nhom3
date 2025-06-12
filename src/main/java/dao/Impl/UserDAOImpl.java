package dao.Impl;

import dao.UserDAO;
import model.RoleObject;
import model.UserObject;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {

    @Override
    public UserObject getUserByUsernamePassword(String username, String password) {

        String sql = "SELECT * FROM users WHERE user_email = ? and password = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return mapRowToUser(rs);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    private UserObject mapRowToUser(ResultSet rs) throws SQLException{
        UserObject user = new UserObject();
        user.setUserId(rs.getInt("user_id"));
        user.setPassword(rs.getString("password"));
        user.setGender(rs.getString("gender"));
        user.setFullname(rs.getString("user_fullname"));
        user.setPhoneNumber(rs.getString("user_phone_number"));
        user.setEmail(rs.getString("user_email"));
        user.setCreateDate(rs.getTimestamp("user_created_date"));
        user.setModifiedDate(rs.getTimestamp("user_modified_date"));
        int userActive = rs.getInt("user_isactive");
        user.setActive(userActive == 1 ? true : false);
        user.setAddress(rs.getString("user_address"));
        user.setLoginCount(rs.getInt("login_count"));

        int roleId = rs.getInt("role_id");
        RoleObject role = new RoleObject();
        role.setRoleId(roleId);
        user.setRole(role);

        return user;
    }
}
