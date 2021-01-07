
package Api;

public class Products implements java.io.Serializable{
    public String product_id;
    public String product_name;
    public String product_category;
    public double show_price;
    public String description;

    public Products() {
    }

    public Products(String product_id, String product_name, String product_category, double show_price, String description) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_category = product_category;
        this.show_price = show_price;
        this.description = description;

    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_category() {
        return product_category;
    }

    public void setProduct_category(String product_category) {
        this.product_category = product_category;
    }

    public double getShow_price() {
        return show_price;
    }

    public void setShow_price(double show_price) {
        this.show_price = show_price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
