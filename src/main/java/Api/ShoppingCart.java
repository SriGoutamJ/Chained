
package Api;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.*;
import java.sql.*;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ShoppingCart implements java.io.Serializable
{
// The shopping cart items are stored in a Vector.
    protected Vector items;

    public ShoppingCart()
    {
        items = new Vector();
    }

/** *  Returns a Vector containing the items in the cart.The Vector
  returned is a clone, so modifying the vector won't affect the
  contents of the cart.
     * @return 
 */
    public Vector getItems()
    {
        return (Vector) items.clone();
    }



// Submit the order and returns a confirmation number(String).
    public String completeOrder(Shipping shipping)
        throws ShoppingCartException
    {


        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "scms_db";
        String userid = "root";
        String password = "Ad&min56";
        java.util.Date date = new java.util.Date();
        java.sql.Date orderdate = new java.sql.Date(date.getTime());
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            }
        int orderNumber = 0;

        
        String sql = "insert into clients(email_id, order_date, order_no, status) values(?,?,?,?)";
        String order = "select order_no from clients"; 
        
        try{
            Connection connection = null;
            PreparedStatement statement = null;
        
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            Statement state = connection.createStatement();
            ResultSet rst = state.executeQuery(order);
//          Gets the last order number stored in database  
            while(rst.next())
            {
                orderNumber = rst.getInt("order_no");
        
            }
//          No other threads can be generating an order number.
            synchronized (this)
            {
                orderNumber = orderNumber + 1;

            }
            state.close();
            
//          Insert data in database for clients who have given order  
            statement=connection.prepareStatement(sql);
            
            statement.setString(1, shipping.email);
            statement.setDate(2, orderdate);
            statement.setInt(3, orderNumber);
            statement.setString(4, "Processing");
            statement.executeUpdate();
            

            
        connection.close();
        } 
        catch (SQLException e) {
        }

        PrintWriter out = null;
        
        try {
            out = new PrintWriter(
                    new FileOutputStream("/home/vidya/Downloads/SCMSDem/orders.txt", true)); //set the path for the file
        } 
        catch (FileNotFoundException ex) {
            Logger.getLogger(ShoppingCart.class.getName()).log(Level.SEVERE, null, ex);
        }

//          Print the shipping info in file
            

            out.println("Email: "+shipping.email);
            
            out.println("Status: Processing order number:"+orderNumber);
            
            out.println("Name: "+shipping.name);
            
            out.println("Address: "+shipping.address);
            
            out.println("City: "+shipping.city);
            
            out.println("Order Number:"+orderNumber+" &emsp; Date: "+orderdate);
            
            out.println("Order Details: ");
                
            out.println("Product_Name Quantity Product_Cost Product_Sub-total of each ordered product are as follows:");

           
          
//          Print out the items.

            NumberFormat currency = NumberFormat.getCurrencyInstance();
            double total_price = 0.0;
            double order_total = 0.0;
            Enumeration e = items.elements();
            while (e.hasMoreElements())
            {
                Item item = (Item) e.nextElement();
                order_total = item.price * item.orderQuantity;
                total_price = total_price + order_total; //&emsp; is used to get tab space in html view
                out.println(item.productname+",      &emsp; "+
                    item.orderQuantity+",     &emsp;  "+currency.format(item.price)+",     &emsp;  "+currency.format(order_total));
            }
            out.println("Total cost: "+currency.format(total_price));
            out.println("*****");
            out.println();
            out.close();
//      Return a confirmation number (the order number as a string in this case).
        return ""+orderNumber;
    }
    public synchronized void addItem(Item newItem)
    {
        Enumeration e = items.elements();

//      Check if there is already an item like this in the cart.
        while (e.hasMoreElements())
        {
            Item currItem = (Item) e.nextElement();

            if (newItem.equals(currItem))
            {
//              Update the order quantity on the existing item.
                currItem.orderQuantity = currItem.orderQuantity +
                    newItem.orderQuantity;
                return;
            }
        }

//      If not present already add it to the cart.
        items.addElement(newItem);
    }

    public synchronized void removeItem(int itemIndex)
    {
        Item item = (Item) items.elementAt(itemIndex);

//      Remove 1 instance of this item from the quantity
        item.orderQuantity = item.orderQuantity - item.quantity;

//      If the order quantity reaches 0, remove the item from the cart.
        if (item.orderQuantity <= 0)
        {
            items.removeElementAt(itemIndex);
        }
    }

}
