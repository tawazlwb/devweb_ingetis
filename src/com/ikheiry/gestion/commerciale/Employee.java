package com.ikheiry.gestion.commerciale;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Employee {
    private int employeeID;
    private String lastName;
    private String firstName;
    private int count;
    
    List<Employee> employes;

    public Employee(int employeeID, String lastName, String firstName) {
        super();
        this.employeeID = employeeID;
        this.lastName = lastName;
        this.firstName = firstName;
        this.employes = new ArrayList<>();
    }

    public Employee(int employeeID) {
        super();
        this.employeeID = employeeID;
        this.employes = new ArrayList<>();
    }
    
    public Employee() {
        super();
        this.employes = new ArrayList<>();
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<Employee> getEmployes() {
        return employes;
    }

    public void setEmployes(List<Employee> employes) {
        this.employes = employes;
    }

    // Read
    public void chercher() {
        String requete = "select * from employees where EmployeeID = " + this.getEmployeeID();

        try {
            ResultSet infos = ParametreBD.executerSelect(requete);
            infos.next();
            this.setFirstName(infos.getString(2));
            this.setLastName(infos.getString(3));
        } catch (Exception e) {
            this.setFirstName("walo");
            this.setLastName("walo");
        }
    }
    
    // Nombre d'employes
    public void count() {
        String requete = "SELECT COUNT(*) FROM employees";
        
        try {
            ResultSet infos = ParametreBD.executerSelect(requete);
            infos.next();
            this.setCount(infos.getInt(1));
        } catch (Exception e) {
            this.setCount(0);
        }
    }
    
    // List employé
 // Nombre d'employes
    public void getEmployes(int page, int nombre) {
        String requete = "SELECT * FROM employees LIMIT " + page + "," + nombre + ";";
        
        try {
            ResultSet infos = ParametreBD.executerSelect(requete);
            while(infos.next()) {
                //System.out.println(infos.getInt(1) + " " + infos.getString(2));
                this.employes.add(new Employee(infos.getInt(1), infos.getString(2), infos.getString(3)));
            }
            this.setEmployes(employes);
        } catch (Exception e) {
            this.setCount(0);
        }
    }
}
