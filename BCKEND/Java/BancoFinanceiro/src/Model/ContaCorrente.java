package Model;

import java.util.Date;

public class ContaCorrente extends Conta {

	private double taxaManutencao;

	// Polimorfismo de sobrecarga
	public ContaCorrente(Cliente cliente, int numero, Agencia ag, Date dataCriacao, double saldo) {
		super(cliente, numero, ag, dataCriacao, saldo);
		this.taxaManutencao = 0.01;
		// TODO Auto-generated constructor stub
	}
	
	// Polimorfismo de sobrecarga
	public ContaCorrente(Cliente cliente, int numero, Agencia ag) {
		super(cliente, numero, ag);
		this.taxaManutencao = 0.01;
		// TODO Auto-generated constructor stub
	}

	public double getTaxaManutencao() {
		return taxaManutencao;
	}

	public void setTaxaManutencao(double taxaManutencao) {
		this.taxaManutencao = taxaManutencao;
	}
	
	//Polimorfismo de sobrescrita
	@Override
	public boolean sacar(double valor) {
		return super.sacar(valor + valor*this.taxaManutencao);
	}

}
