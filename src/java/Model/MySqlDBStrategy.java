/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Adam
 */
public class MySqlDBStrategy implements DBStrategy {
    private Connection conn;

    public void OpenConnection(String driverClass, String url, String userName, String password) throws ClassNotFoundException, SQLException {
        Class.forName (driverClass);
        conn = DriverManager.getConnection(url, userName, password);
        
    }
    
    public void CloseConnection() throws SQLException{
        conn.close();
    }
    
    
}
