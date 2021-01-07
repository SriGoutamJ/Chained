
package Api;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Daouser {
        Shipping shipping = new Shipping();
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "scms_db";  
        String userid = "root";
        String password = "Ad&min56";
        public Shipping getuserDetails(String user){
            try{
                Class.forName(driver);
            }
            catch (ClassNotFoundException e) {
            }
            
            Connection connection = null;
            PreparedStatement statement = null;
            ResultSet resultSet = null;
            
            try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);

                String sql = "select * from clientdetails where email = ?";

                statement=connection.prepareStatement(sql);
                statement.setString(1, user);
                
                resultSet = statement.executeQuery();
               
                while(resultSet.next()){
                    String name = resultSet.getString("fname");

                    String address = resultSet.getString("address");
                    String email = resultSet.getString("email");
                    String city = resultSet.getString("city");
                    String contact_no = resultSet.getString("contactNo");
                    shipping.setName(name);
                    shipping.setAddress(address);
                    shipping.setCity(city);
                    shipping.setEmail(email);
                    shipping.setContact_no(contact_no);
                    
                    return shipping;
                }
               connection.close();
            }
            catch (SQLException e) {
            }
            return null;
          
        }

}
