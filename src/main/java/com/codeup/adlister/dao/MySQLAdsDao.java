package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public List<Ad> all() {
        Statement statement = null;
        try {
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM ads");
            return listOfAdds(resultSet);

        } catch (SQLException e) {
           throw new RuntimeException("error connecting to the database");
        }

    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(insertAdd(ad), Statement.RETURN_GENERATED_KEYS);
            ResultSet resultSet = statement.getGeneratedKeys();
            resultSet.next();
            return resultSet.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("error retrieving new adds");
        }

    }

    private String insertAdd(Ad ad) {
        return "INSERT INTO ads(user_id, title, description) VALUE "
                + "('" + ad.getUserId() + "',"
                + "'" + ad.getTitle() + "',"
                + "'" + ad.getDescription() + "')";

    }

    private Ad getAdd(ResultSet resultSet) throws SQLException {
        return new Ad(
                resultSet.getLong("id"),
                resultSet.getLong("user_id"),
                resultSet.getString("title"),
                resultSet.getString("description")
        );

    }

    private List<Ad> listOfAdds(ResultSet resultSet) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (resultSet.next()) {
            ads.add(getAdd(resultSet));
        }
        return ads;
    }

    public List<Ad> search(String searchTern) throws SQLException {
        String query = "SELECT * FROM ads WHERE title LIKE '%?%' OR description LIKE '%?%'";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, searchTern);
        statement.setString(2, searchTern);
        statement.executeUpdate();
        ResultSet resultSet = statement.getResultSet();
        return listOfAdds(resultSet);
    }


}

