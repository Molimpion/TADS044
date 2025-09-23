package Model;

import java.util.Date;

enum TipoTransacao {
	SAQUE, DEPÓSITO, PAGAMENTO, TRANSFERÊNCIA
}

public class Transacao {

	private TipoTransacao tipo;
	private Date data;
	private double valor;
	private Cliente clienteTransferencia;
	private char tipoValor;

	public Transacao(TipoTransacao tipo, Date data, double valor, Cliente clienteTransferencia, char tipoValor) {
		super();
		this.tipo = tipo;
		this.data = data;
		this.valor = valor;
		this.clienteTransferencia = clienteTransferencia;
		this.tipoValor = tipoValor;
	}

	public TipoTransacao getTipo() {
		return tipo;
	}

	public Date getData() {
		return data;
	}

	public double getValor() {
		return valor;
	}

	public Cliente getClienteTransferencia() {
		return clienteTransferencia;
	}

	public char getTipoValor() {
		return tipoValor;
	}

	@Override
	public String toString() {
		if (clienteTransferencia != null) {
			return data.getDay() + "/" + data.getMonth()  + "/" + 
					data.getYear() + "\t" + tipo + " - " 
					+ clienteTransferencia + "\t" + valor + tipoValor;			
		} else {
			return data.getDay() + "/" + data.getMonth()  + "/" + 
					data.getYear() + "\t" + tipo + "\t" + valor + 
					tipoValor;
		}		
		
	}	

}
