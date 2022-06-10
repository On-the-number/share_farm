package scoresys.javabean;

public class Farmer {
    String Farmer_Id;
    String Password;
    String Farmer_Name;
    String Farmer_mail;
    String Farmer_Sex;
    String Farmer_Phone;
    int AGE;
    int Status;
    int num;


    public String getFarmer_Id(String string) {
        return Farmer_Id;
    }

    public void setFarmer_Id(String farmer_Id) {
        Farmer_Id = farmer_Id;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getFarmer_Name(String string) {
        return Farmer_Name;
    }

    public void setFarmer_Name(String farmer_Name) {
        Farmer_Name = farmer_Name;
    }

    public String getFarmer_mail(String string) {
        return Farmer_mail;
    }

    public void setFarmer_mail(String farmer_mail) {
        Farmer_mail = farmer_mail;
    }

    public String getFarmer_Sex() {
        return Farmer_Sex;
    }

    public void setFarmer_Sex(String farmer_Sex) {
        Farmer_Sex = farmer_Sex;
    }

    public String getFarmer_Phone() {
        return Farmer_Phone;
    }

    public void setFarmer_Phone(String farmer_Phone) {
        Farmer_Phone = farmer_Phone;
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
