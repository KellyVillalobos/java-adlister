package com.codeup.adlister.dao;

import com.codeup.adlister.models.Config;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("There was a problem with the connection");
        }
    }

    @Override
    public User findByUsername(String username) {
        try {
            String sql = "SELECT * FROM users WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,username);
            ResultSet resultSet = statement.executeQuery();
            return getUser(resultSet) ;

        } catch (SQLException e) {
            throw new RuntimeException("There is a problem retrieving the user information");
        }


    }

    @Override
    public Long insert(User user) {
        try {
        String sql = "INSERT INTO users(username, email, password) VALUES (?,?,?)";
        PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        statement.setString(1,user.getUsername());
        statement.setString(2, user.getEmail());
        statement.setString(3,hashPass(user.getPassword()));
        statement.executeUpdate();
        ResultSet resultSet = statement.getGeneratedKeys();
        resultSet.next();
        return resultSet.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("There is something wrong with the connection",e);
        }


    }
    private User getUser(ResultSet resultSet) throws SQLException {
        return new User(
                resultSet.getLong("id"),
                resultSet.getString("username"),
                resultSet.getString("email"),
                hashPass(resultSet.getString("password"))

        );


    }
    private String hashPass(String password){
        int numberOfRounds = 12;
        return BCrypt.hashpw(password, BCrypt.gensalt(numberOfRounds));
    }

    //create some method to get a user name out of the database
    //

}
