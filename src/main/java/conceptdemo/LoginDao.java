
package conceptdemo;

import java.sql.*;

public class LoginDao {
	
	String url="jdbc:mysql://localhost:3306/scms_db";
	String username="root";
	String pass="Ad&min56";
	String sql="select * from clientdetails";
	
	public boolean validate(String Email,String Password) {

            boolean status=false;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(url,username,pass);

                String query = "select * from clientdetails where email = ? and password = ? ";

                PreparedStatement st=con.prepareStatement(query); 
                st.setString(1, Email);
                st.setString(2, Password);

                ResultSet rs=st.executeQuery();

                if(rs.next()) {
                    return status=true;
                }
            }
            catch (ClassNotFoundException | SQLException e) {
            }
            return false;
        }
}