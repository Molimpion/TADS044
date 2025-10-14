package Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public abstract class Conta {

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
					new Date(), valor, null, null, '+');
			this.transacoes.add(transacao);
			return true;
		} else {
			System.out.println("Valor de déposito inválido!");
			return false;
		}
	}
	
	//sacar
	public boolean sacar(double valor) {
		if (valor > 0 ) {
			if (this.saldo >= valor) {
				this.saldo -= valor;
				Transacao transacao = new Transacao(TipoTransacao.SAQUE, 
						new Date(), valor, null, null, '-');
				this.transacoes.add(transacao);
				return true;
			}else {
				System.out.println("Saldo insuficiente!");
				return false;
			}
		} else {
			System.out.println("Valor de saque inválido!");
			return false;
		}
	}
	
	//pagamento
	public boolean realizarPagamento(double valor, String infoPagamento) {
		if (valor > 0 && infoPagamento != null) {
			if (this.saldo >= valor) {
				this.saldo -= valor;
				Transacao transacao = new Transacao(TipoTransacao.PAGAMENTO,
						new Date(), valor, null, infoPagamento, '-');
				this.transacoes.add(transacao);
				return true;
			} else {
				System.out.println("Saldo insuficiente!");
				return false;
			}
		} else {
			System.out.println("Valor ou informações do pagamento inválidos!");
			return false;
		}
	}
	
	//transferir
	public boolean transferir(double valor, Conta contaFavorecida) {
		if (valor > 0 && contaFavorecida != null) {
			if (this.saldo >= valor) {
				this.saldo -= valor;
				Transacao transacao = new Transacao(TipoTransacao.TRANSFERÊNCIA, 
						new Date(), valor, contaFavorecida.cliente, null, '-');
				this.transacoes.add(transacao);
				contaFavorecida.saldo += valor;
				Transacao transacaoFav = new Transacao(TipoTransacao.TRANSFERÊNCIA,
						new Date(), valor, this.cliente, null, '+');
				contaFavorecida.transacoes.add(transacaoFav);
				return true;
			} else {
				System.out.println("Saldo insuficiente!");
				return false;
			}
		} else {
			System.out.println("Valor ou conta favorecida inválidos!");
			return false;
		}
	}
	
	//gerar extrato
	public String gerarExtrato() {
		String extrato = ".:: Extrato da Conta " + this.numero + " ::.\n";
		extrato += "Cliente: " + this.cliente.getNome() + ", CPF: " 
				+ this.cliente.getCpf() + "\n" + "Agência: " + this.ag.getNome() 
				+ ", Nº Ag.: " + this.ag.getNumero() + "\n";
		for (Iterator iterator = transacoes.iterator(); iterator.hasNext();) {
			Transacao transacao = (Transacao) iterator.next();
			extrato += transacao.toString() + "\n";
		}
		extrato += "Saldo: R$ " + this.saldo;
		return extrato;
	}
	
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
