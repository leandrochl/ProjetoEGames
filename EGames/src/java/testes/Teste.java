/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testes;

import br.com.egames.Telefone;
import br.com.egames.TelefoneDAO;

/**
 *
 * @author evio
 */
public class Teste {
    public static void main(String[] args) {
       Telefone tel = new Telefone();
       TelefoneDAO teld = new TelefoneDAO();
       
       tel=teld.buscaPorId("201601");
       
        System.out.println(tel.getTelefone1());
        System.out.println(tel.getTelefone2());
        System.out.println(tel.getTelefone3());
    }
}
