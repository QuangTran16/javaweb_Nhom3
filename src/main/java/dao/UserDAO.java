package dao;

import model.UserObject;

public interface UserDAO {

    public UserObject getUserByUsernamePassword(String username, String password);
}
