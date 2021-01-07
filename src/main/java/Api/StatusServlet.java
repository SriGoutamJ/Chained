
package Api;

import java.io.*;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/status")
public class StatusServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int orderno = Integer.parseInt(request.getParameter("orderno"));
        
        java.util.Date date = new java.util.Date();
        java.sql.Date deliverdate = new java.sql.Date(date.getTime());
        
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "scms_db";
        String userid = "root";
        String password = "Ad&min56";
        try {
            Class.forName(driver);
        } 
        catch (ClassNotFoundException e) {
        }
        
//      Change the status to delivered and set delivery date for a given orderno in database
        String sql = "update clients set status=?, delivered_date=? where order_no=?";
        
        try{
            Connection connection = null;
            PreparedStatement statement = null;
        
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.prepareStatement(sql);
            statement.setString(1, "Delivered");
            statement.setDate(2, deliverdate);
            statement.setInt(3, orderno);
            statement.executeUpdate();
            
            connection.close();
        } 
        catch (SQLException e) {
        }
        
//      Change the status in file  
        File file = new File("/home/vidya/Downloads/SCMSDem/orders.txt"); //set path of file location
        
        FileReader fileReader = null;
        try{
            String temp;
            fileReader = new FileReader(file);
            String oldContent = "";
            String updatecontent = "Status: Delivered & Paid-for    &emsp; Delivered Date: "+deliverdate;
            FileWriter writer = null;
                
            String toupdate = "Status: Processing order number:"+orderno;
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String line = bufferedReader.readLine();
            while (line != null) {                   
                oldContent = oldContent + line + System.lineSeparator();
                 
                line = bufferedReader.readLine();
            }
            
            String updated = oldContent.replace(toupdate, updatecontent);
            writer = new FileWriter(file);   
            writer.write(updated);
                
            bufferedReader.close();
            writer.close();
        }
        catch (FileNotFoundException ex) {
          
        }
        catch (IOException ex) {
        
        }

        response.sendRedirect("ActiveClients.jsp");
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
