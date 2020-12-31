
package Api;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/checkout")

public class CheckoutServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {


            HttpSession session = request.getSession();

            ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");

// If there is no shopping cart, create one.
            if (cart == null) {
                cart = new ShoppingCart();

                session.setAttribute("ShoppingCart", cart);
            }

                 
            Shipping shipping = (Shipping) session.getAttribute("userdetails");
            if (request.getParameter("confirm") != null) {
                String confirmation = cart.completeOrder(shipping);
                response.sendRedirect("Confirmation.jsp"+"?confirmationNumber="+confirmation);
            }
                
            } catch (ShoppingCartException exc) {
                PrintWriter out = response.getWriter();

                out.println("<html><body><h1>Error</h1>");
                out.println("The following error occurred while "
                        + "processing your order:");
                out.println("<pre>");
                out.println(exc.getMessage());
                out.println("</pre>");
                out.println("</body></html>");
            }
        }
    

  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
