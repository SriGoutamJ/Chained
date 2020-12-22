
package Api;

import java.util.*;
import java.sql.*;

public class ShoppingCart implements java.io.Serializable
{
// The shopping cart items are stored in a Vector.
    protected Vector items;

    public ShoppingCart()
    {
        items = new Vector();
    }

/** Returns a Vector containing the items in the cart.The Vector
    returned is a clone, so modifying the vector won't affect the
    contents of the cart.
  * @return 
 */
    public Vector getItems()
    {
        return (Vector) items.clone();
    }

   protected static int nextOrderNumber = 1;

    // Submit the order and method returns a confirmation number(String).
    public String completeOrder(Shipping shipping)
        throws ShoppingCartException
    {

        int orderNumber = 0;
        // No other threads can be generating an order number.
        synchronized (this)
        {
            orderNumber = nextOrderNumber;
            nextOrderNumber = nextOrderNumber + 1;
        }
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "admin";
        String userid = "root";
        String password = "Ad&min56";
        try {
            Class.forName(driver);
            } catch (ClassNotFoundException e) {
            }
        
        
        String sql ="insert into Active_Clients values(?,?,?)";
        try{
            Connection connection = null;
            PreparedStatement statement = null;
            
            String orderno = "" + orderNumber; // ordernumber is typecasted to string
            java.util.Date date = new java.util.Date();
            java.sql.Date orderdate = new java.sql.Date(date.getTime());
            
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            
            statement=connection.prepareStatement(sql);

            statement.setString(1, shipping.email);
            statement.setDate(2, orderdate);
            statement.setString(3, orderno);
            
            statement.executeUpdate();
            
        connection.close();
        } 
        catch (SQLException e) {
        }

// Return a confirmation number (the order number as a string).
        return ""+orderNumber;
    }
public synchronized void addItem(Item newItem)
    {
        Enumeration e = items.elements();

//  Check if there is already an item like this in the cart.
        while (e.hasMoreElements())
        {
            Item currItem = (Item) e.nextElement();

            if (newItem.equals(currItem))
            {
//  Update the order quantity on the existing item.
                currItem.orderQuantity = currItem.orderQuantity + 
                        newItem.orderQuantity;
                return;
            }
        }

//  If not present already add it to the cart.
        items.addElement(newItem);
    }

    public synchronized void removeItem(int itemIndex)
    {
        Item item = (Item) items.elementAt(itemIndex);

// Remove 1 instance of this item from the quantity
        item.orderQuantity = item.orderQuantity - item.quantity;

// If the order quantity reaches 0, remove the item from the cart.
        if (item.orderQuantity <= 0)
        {
            items.removeElementAt(itemIndex);
        }
    }

}




