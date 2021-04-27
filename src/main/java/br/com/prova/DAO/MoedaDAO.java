package br.com.prova.DAO;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.prova.model.Moeda;

@Repository
public class MoedaDAO {
	
	private static List<Moeda> moedas;
	
	public MoedaDAO() {
		moedas = new LinkedList<Moeda>();
	}
	
	public void salvar (Moeda moeda) {
		moedas.add(moeda);
		System.out.println(moedas);
	}
	
	List<Moeda> getAll() {
		return moedas;
	}
}
