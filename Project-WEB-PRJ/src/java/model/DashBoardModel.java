/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author 84384
 */
public class DashBoardModel {
    private ArrayList<YearMonthIncome> list_income;
    private int count_order;
    private int number_user;

    public DashBoardModel() {
    }

    public DashBoardModel(ArrayList<YearMonthIncome> list_income, int count_order, int number_user) {
        this.list_income = list_income;
        this.count_order = count_order;
        this.number_user = number_user;
    }

    public ArrayList<YearMonthIncome> getList_income() {
        return list_income;
    }

    public void setList_income(ArrayList<YearMonthIncome> list_income) {
        this.list_income = list_income;
    }

    
    public int getCount_order() {
        return count_order;
    }

    public void setCount_order(int count_order) {
        this.count_order = count_order;
    }

    public int getNumber_user() {
        return number_user;
    }

    public void setNumber_user(int number_user) {
        this.number_user = number_user;
    }

    
    public int getTotalIncome(){
        int sum= 0;
        for(int i= 0; i< this.list_income.size(); i++)
            sum= sum + this.list_income.get(i).getIncome();
        return sum;
    }
     public int getTotalIncomePermonth(){
        int sum= 0;
        for(int i= 0; i< this.list_income.size(); i++)
            sum= sum + this.list_income.get(i).getIncome();
        return (int) sum/this.list_income.size();
    }
    public ArrayList<String> getArrayListYearMonth(){
        ArrayList<String> new_String= new ArrayList<>();
        for(int i= 0; i< this.list_income.size(); i++)
            new_String.add(this.list_income.get(i).getYear_month());
        return new_String;
    }
}
