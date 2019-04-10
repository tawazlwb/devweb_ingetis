package com.ikheiry.gestion.commerciale;

import java.sql.ResultSet;

public class Customer {

    private int code;
    private String nomSociete;
    private String ville;
    private String pays;

    public Customer(int cod, String nomSo, String vil, String pay) {
        code = cod;
        nomSociete = nomSo;
        ville = vil;
        pays = pay;
    }

    public Customer(int cod) {
        this.code = cod;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getNomSociete() {
        return nomSociete;
    }

    public void setNomSociete(String nomSociete) {
        this.nomSociete = nomSociete;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public void chercher() {
        String requete = "select * from customers where code = " + this.getCode();

        try {
            ResultSet infocli = ParametreBD.executerSelect(requete);
            infocli.next();
            this.setNomSociete(infocli.getString(2));
            this.setVille(infocli.getString(3));
            this.setPays(infocli.getString(4));
        } catch (Exception e) {
            this.setNomSociete("walo");
            this.setVille("walo");
            this.setPays("walo");
        }
    }
}
