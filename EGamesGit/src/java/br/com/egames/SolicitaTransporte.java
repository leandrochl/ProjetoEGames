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
public class SolicitaTransporte {
    private String cnpjTransp;
    private Integer idNota;
    private Integer idPedido;

    public String getCnpjTransp() {
        return cnpjTransp;
    }

    public void setCnpjTransp(String cnpjTransp) {
        this.cnpjTransp = cnpjTransp;
    }

    public Integer getIdNota() {
        return idNota;
    }

    public void setIdNota(Integer idNota) {
        this.idNota = idNota;
    }

    public Integer getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
        this.idPedido = idPedido;
    }
    
    
}
