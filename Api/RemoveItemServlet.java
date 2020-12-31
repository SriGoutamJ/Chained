
package Api;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "RemoveItemServlet", urlPatterns = {"/RemoveItemServlet"})

public class RemoveItemServlet extends HttpServlet
{

    /**
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void service(HttpServletRequest request,
        HttpServletResponse response)
        throws IOException, ServletException
    {

// Getting the index of the item to remove.
        int itemIndex = Integer.parseInt(request.getParameter("item"));

        HttpSession session = request.getSession();

//  Getting the cart.
        ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");

//  If there is no shopping cart, creating one.
        if (cart == null)
        {
            cart = new ShoppingCart();

            session.setAttribute("ShoppingCart", cart);
        }

        cart.removeItem(itemIndex);

//  Display the cart and allow the user to check out or order more items.
        response.sendRedirect("DisplayShoppingCart.jsp");
    }
}
