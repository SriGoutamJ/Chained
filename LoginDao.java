package conceptTrials.loginDao;

import java.sql.*;

public class LoginDao {
	
	String url="jdbc:mysql://localhost::3306/clients";
	String username="root";
	String pass="mysql";
	String sql="select * from clientlist;";
	
	public boolean validate(String Email,String Password) 
{
		/*if(Email.equals("goutam") && Password.equals("pass"))
		{
			return true;
		}*/



		boolean status=false;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,pass);
		
		//Avoid:
		//Statement st= con.createStatement();
		//ResultSet rs=st.executeQuery(sql);
		
		PreparedStatement st=con.prepareStatement("select * from login where username = ? and password = ? "); 
		ResultSet rs=st.executeQuery();
		st.setString(1, Email);
        		st.setString(2, Password);
		
		if(rs.next())
		{
			status=true;
		}
		}catch (Exception e) {
		
		e.printStackTrace();
	}
		return status;
}
}
