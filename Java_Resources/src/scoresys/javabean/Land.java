package scoresys.javabean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Land {
    String Land_Id;
    String Farmer_Id;
    String Location;
    float Square;
    int Expense;
    String Land_status;
    String application;


    public String getLand_Id() {
        return Land_Id;
    }

    public void setLand_Id(String land_Id) {
        Land_Id = land_Id;
    }

    public String getFarmer_Id() {
        return Farmer_Id;
    }

    public void setFarmer_Id(String farmer_Id) {
        Farmer_Id = farmer_Id;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }

    public float getSquare() {
        return Square;
    }

    public void setSquare(float square) {
        Square = square;
    }

    public int getExpense() {
        return Expense;
    }

    public void setExpense(int expense) {
        Expense = expense;
    }

    public String getLand_status() {
        return Land_status;
    }

    public void setLand_status(String land_status) {
        Land_status = land_status;
    }

    public String getApplication() {
        return application;
    }

    public void setApplication(String application) {
        this.application = application;
    }


}
