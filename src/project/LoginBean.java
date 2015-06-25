
package project;
 

public class LoginBean {
	
	//Login Bean variables are initialized
    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String userType;
    public boolean valid;
    public String itemId;
    
    public String getFirstName()
    {
        return firstName;
    }
    public void setFirstName(String newFirstName)
    {
        firstName = newFirstName;
    }
    public String getLastName()
    {
        return lastName;
    }
    public void setLastName(String newLastName)
    {
        lastName = newLastName;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String newPassword)
    {
        password = newPassword;
    }
    public String getUsername()
    {
        return username;
    }
    public void setUserName(String newUsername)
    {
        username = newUsername;
    }
    public boolean isValid()
    {
        return valid;
    }
    public void setValid(boolean newValid)
    {
        valid = newValid;
    }
    public void setUserType(String newUserType)
    {
        userType = newUserType;
    }
    public String getUserType()
    {
        return userType;
        
    }
	public void setitemId(String newItemId) {
		
		itemId =  newItemId;
		}
    public String getItemId()
    {
        return itemId;
        
    }
}

