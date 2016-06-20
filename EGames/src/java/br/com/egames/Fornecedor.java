
//PRONTO


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.egames;

/**
 *
 * @author Leandro
 */
public class Fornecedor {
    private String cnpjForn;
    private String nomeForn;
    private String enderecoForn;
    private String emailForn; //NOVO CAMPO 
    private String cepForn;
    //private String idTelefone; NAO EXISTE MAIS

    public String getCnpjForn() {
        return cnpjForn;
    }

    public void setCnpjForn(String cnpjForn) {
        this.cnpjForn = cnpjForn;
    }

    public String getNomeForn() {
        return nomeForn;
    }

    public void setNomeForn(String nomeForn) {
        this.nomeForn = nomeForn;
    }

    public String getEnderecoForn() {
        return enderecoForn;
    }

    public void setEnderecoForn(String enderecoForn) {
        this.enderecoForn = enderecoForn;
    }

    public String getEmailForn() {
        return emailForn;
    }

    public void setEmailForn(String emailForn) {
        this.emailForn = emailForn;
    }

    public String getCepForn() {
        return cepForn;
    }

    public void setCepForn(String cepForn) {
        this.cepForn = cepForn;
    }

   
}
