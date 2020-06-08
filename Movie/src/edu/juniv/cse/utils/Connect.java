import java.sql.*;
import java.util.Scanner;

import static java.lang.Class.forName;

public class Connect {
    static boolean Connection(String id, String pass) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3307/test";
            String username = "root";
            String password = "";
            Connection connection = DriverManager.getConnection(url, username, password);
            PreparedStatement preparedStmt = null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}