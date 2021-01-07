
package Api;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "AddToShoppingCartServlet", urlPatterns = {"/AddToShoppingCartServlet"})

public class AddToShoppingCartServlet extends HttpServlet
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

// Getting the item values from the request.
        String productCode = request.getParameter("productCode");
        String description = request.getParameter("description");
        String productname = request.getParameter("productname");
        int quantity = Integer.parseInt(
            request.getParameter("quantity"));
        double price = Double.parseDouble(
            request.getParameter("price"));

// Creating an item to add to the cart.
        Item item = new Item(productCode, productname, description, price, quantity);

        HttpSession session = request.getSession();

// Get the cart.
        ShoppingCart cart = (ShoppingCart) session.
            getAttribute("ShoppingCart");

// If there is no shopping cart, create one.
        if (cart == null)
        {
            cart = new ShoppingCart();

            session.setAttribute("ShoppingCart", cart);
        }

        cart.addItem(item);

// Display the cart and allow the user to check out or order more items.
        response.sendRedirect("DisplayShoppingCart.jsp");
    }
}