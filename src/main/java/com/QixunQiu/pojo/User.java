package com.QixunQiu.pojo;

public class User {
    String UserID  ;
    String Password ;

    @Override
    public String toString() {
        return "User{" +
                "UserID='" + UserID + '\'' +
                ", Password='" + Password + '\'' +
                '}';
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String userID) {
        UserID = userID;
    }
}
