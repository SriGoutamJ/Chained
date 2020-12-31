
package conceptdemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginClientservlet")

public class loginClientservlet extends HttpServlet{
	private static final long serialVersionUID =1L;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		LoginDao dao=new LoginDao();
		
			if(dao.validate(email,password)){
				HttpSession session= request.getSession();
				session.setAttribute("email",email);
				response.sendRedirect("clientHome.jsp");
			}
			else {
				response.sendRedirect("loginClient.jsp");
				PrintWriter out=response.getWriter();
				out.print("invalid credentials");
			}
	}
}

