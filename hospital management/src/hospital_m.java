import java.sql.DriverManager;
import com.mysql.jdbc.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


public class hospital_m {

public static void main(String[]args) throws ClassNotFoundException, SQLException{
    
        String url = "jdbc:mysql://127.0.0.1/hospitalmanagement";
        String user = "root";
        String password = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = (Connection) DriverManager.getConnection(url, user, password);
    
    
}

}
