
package Api;

import java.util.ArrayList;
import java.util.Vector;
import java.sql.*;

public class ProductCatalog {

    protected Products[] items1;
    ArrayList<Products> items = new ArrayList<Products>();
    
  
    public ProductCatalog() {
        

        try {
            Connection conn;
            Statement stm;
            ResultSet rst;
          
            
            String sql = "select * from all_items";

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scms_db", "root", "Ad&min56");

            stm = conn.createStatement();
            rst = stm.executeQuery(sql);
                while (rst.next()) //next read the current record and move to next,if end of record found it return false
                {
                    String product_id = rst.getString("productid");
                    String product_name = rst.getString("productname");
                    String product_category = rst.getString("category");
                    double show_price = rst.getDouble("price");
                    String description = rst.getString("description");

                    Products p= new Products();
                    p.setProduct_id(product_id);
                    p.setProduct_name(product_name);
                    p.setProduct_category(product_category);
                    p.setShow_price(show_price);
                    p.setDescription(description);

                    items.add(p);
                }
           
        }
        catch(ClassNotFoundException | SQLException ex){}
                
    }

                
                /**
                 * returns an array containing all the items in the catalog
                 * @return 
                */
    public Products[] getItems() {
            Products[] returnItems = new Products[items.size()];
            items.toArray(returnItems);

            return returnItems;
    }

} 
