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
	private String infoPagamento;
	private char tipoValor;

	public Transacao(TipoTransacao tipo, Date data, double valor, 
			Cliente clienteTransferencia, String infoPagamento, char tipoValor) {
		super();
		this.tipo = tipo;
		this.data = data;
		this.valor = valor;
		this.clienteTransferencia = clienteTransferencia;
		this.infoPagamento = infoPagamento;
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
	
	public String getInfoPagamento() {
		return infoPagamento;
	}

	public char getTipoValor() {
		return tipoValor;
	}

	@Override
	public String toString() {
		if (clienteTransferencia != null) {
			return data.getDate() + "/" + (data.getMonth()+1)  + "/" + 
					(data.getYear()+1900) + "\t" + tipo + " - " 
					+ clienteTransferencia.getNome() + "\t" + tipoValor + " R$ "+ valor;			
		} else if(infoPagamento != null) {
			return data.getDate() + "/" + (data.getMonth()+1)  + "/" +  
					(data.getYear()+1900) + "\t" + tipo + " - " 
					+ infoPagamento + "\t" + tipoValor + " R$ "+ valor;
		} else {
			return data.getDate() + "/" + (data.getMonth()+1)  + "/" + 
					(data.getYear()+1900) + "\t" + tipo + "\t" + tipoValor + " R$ "+ valor;
		}
		
	}	

}
