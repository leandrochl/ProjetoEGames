/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.egames;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Leandro
 */
public class Pedido {

    private String data;
    private Integer idPedido;
    private Double valorTotal;
    private String cpfCliente;
    private List<ItensPedido> itens = new ArrayList<ItensPedido>();

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public Integer getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
        this.idPedido = idPedido;
    }

    public Double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public String getCpfCliente() {
        return cpfCliente;
    }

    public void setCpfCliente(String cpfCliente) {
        this.cpfCliente = cpfCliente;
    }

    public void adiciona(Produto p, int qtde) {

        ItensPedido ip = new ItensPedido();
        
        ip.setIdPedido(this.getIdPedido());
        ip.setIdProduto(p.getIdProduto());
        ip.setQtdeProdutoPedido(qtde);
        this.itens.add(ip);
        this.valorTotal += p.getPreco() * qtde;
    }

    public Integer getNumeroDeItens() {
        return this.itens.size();
    }

}
