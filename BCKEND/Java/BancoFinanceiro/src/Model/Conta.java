package Model;

import java.util.ArrayList;
import java.util.Date;

public class Conta {

	private Cliente cliente;
	private int numero;
	private Agencia ag;
	private Date dataCriacao;
	private double saldo;
	private String status;
	private ArrayList<Transacao> transacoes;

	public Conta(Cliente cliente, int numero, Agencia ag, Date dataCriacao, double saldo) {
		super();
		this.cliente = cliente;
		this.numero = numero;
		this.ag = ag;
		this.dataCriacao = dataCriacao;
		this.saldo = saldo;
		this.status = "Ativa";
		this.transacoes = new ArrayList<Transacao>();
	}

	public Conta(Cliente cliente, int numero, Agencia ag) {
		super();
		this.cliente = cliente;
		this.numero = numero;
		this.ag = ag;
		this.dataCriacao = new Date();
		this.saldo = 0.0;
		this.status = "Ativa";
		this.transacoes = new ArrayList<Transacao>();
	}
	
	//depositar
	public boolean depositar(double valor) {
		if (valor > 0) {
			this.saldo += valor;
			Transacao transacao = new Transacao(TipoTransacao.DEPÓSITO, 
					new Date(), valor, null, '+');
			this.transacoes.add(transacao);
			return true;
		} else {
			System.out.println("Valor de déposito inválido!");
			return false;
		}
	}
	
	//sacar
	public boolean sacar(double valor) {
		if (this.saldo >= valor) {
			this.saldo -= valor;
			Transacao transacao = new Transacao(TipoTransacao.SAQUE, 
					new Date(), valor, null, '-');
			this.transacoes.add(transacao);
			return true;
		}else {
			System.out.println("Saldo insuficiente!");
			return false;
		}
	}	
	
	//transferir
	
	//gerar extrato

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public Agencia getAg() {
		return ag;
	}

	public void setAg(Agencia ag) {
		this.ag = ag;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public Date getDataCriacao() {
		return dataCriacao;
	}

	public double getSaldo() {
		return saldo;
	}

}
