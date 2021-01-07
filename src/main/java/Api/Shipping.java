
package Api;

public class Shipping implements java.io.Serializable
{
    public String name;
    public String address;
    public String city;
    public String contact_no;
    public String email;

    public Shipping()
    {
    }

    public String getName() { 
        return name;
    }
    public void setName(String aName) {
        name = aName;
    }

    public String getAddress() { 
        return address;
    }
    public void setAddress(String anAddress) {
        address = anAddress;
    }

    public String getCity() {
        return city; 
    }
    public void setCity(String aCity) { 
        city = aCity;
    }

    public String getEmail() { 
        return email;
    }
    public void setEmail(String anEmail) { 
        email = anEmail;
    }
    
    public String getContact_no() { 
        return contact_no; 
    }
    public void setContact_no(String aContact_no) {
        contact_no = aContact_no; 
    }
}
