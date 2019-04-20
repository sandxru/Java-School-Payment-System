package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
    
    public static Connection connect(){
        
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paymentsystem", "root", "root");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return conn;
    }



}