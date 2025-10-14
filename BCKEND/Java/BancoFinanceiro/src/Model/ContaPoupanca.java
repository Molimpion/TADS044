package Model;

import java.util.Date;

public class ContaPoupanca extends Conta {

	private double taxaRendimento;

	// Polimorfismo de sobrecarga
	public ContaPoupanca(Cliente cliente, int numero, Agencia ag, Date dataCriacao, double saldo) {
		super(cliente, numero, ag, dataCriacao, saldo);
		this.taxaRendimento = 0.02;
		// TODO Auto-generated constructor stub
	}

	// Polimorfismo de sobrecarga
	public ContaPoupanca(Cliente cliente, int numero, Agencia ag) {
		super(cliente, numero, ag);
		this.taxaRendimento = 0.02;
		// TODO Auto-generated constructor stub
	}

	// Polimorfismo de sobrescrita
	@Override
	public boolean depositar(double valor) {
		return super.depositar(valor + valor * this.taxaRendimento);
	}
}
