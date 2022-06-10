package scoresys.javabean;

public class Customer {
    String Customer_ID;
    String Password;
    String Customer_Name;
    String Customer_mail;
    String Customer_Sex;
    String Customer_Phone;
    int AGE;
    int Status;
    int num;


    public String getCustomer_ID() {
        return Customer_ID;
    }

    public void setCustomer_ID(String customer_ID) {
        Customer_ID = customer_ID;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getCustomer_Name() {
        return Customer_Name;
    }

    public void setCustomer_Name(String customer_Name) {
        Customer_Name = customer_Name;
    }

    public String getCustomer_mail() {
        return Customer_mail;
    }

    public void setCustomer_mail(String customer_mail) {
        Customer_mail = customer_mail;
    }

    public String getCustomer_Sex() {
        return Customer_Sex;
    }

    public void setCustomer_Sex(String customer_Sex) {
        Customer_Sex = customer_Sex;
    }

    public String getCustomer_Phone() {
        return Customer_Phone;
    }

    public void setCustomer_Phone(String customer_Phone) {
        Customer_Phone = customer_Phone;
    }

    public int getAGE() {
        return AGE;
    }

    public void setAGE(int AGE) {
        this.AGE = AGE;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int status) {
        Status = status;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }


}
