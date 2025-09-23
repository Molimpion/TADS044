import { Cliente } from "./Cliente";

export enum TipoTransacao {
    DEPOSITO = "Depósito",
    SAQUE = "Saque",
    TRANSFERENCIA = "Transferência",
    PAGAMENTO = "Pagamento"
}

export class Transacao {
    private tipo: TipoTransacao;
    private valor: number;
    private data: Date;
    private clienteTransferencia?: Cliente;
    private tipoValor: string;

    constructor(tipo: TipoTransacao, valor: number, tipoValor: string,  clienteTransferencia?: Cliente) {
        this.tipo = tipo;
        this.valor = valor;
        this.data = new Date();
        this.tipoValor = tipoValor;
        if(clienteTransferencia) this.clienteTransferencia = clienteTransferencia;        
    }

    public getTipo(): TipoTransacao {
        return this.tipo;
    }

    public getValor(): number {
        return this.valor;
    }

    public getData(): Date {
        return this.data;
    }

    public getClienteTransferencia(): Cliente | undefined {
        return this.clienteTransferencia;
    }

    public getTipoValor(): string {
        return this.tipoValor;
    }

    public toString(): string {
        let info = `Tipo: ${this.tipo} | Valor: ${this.tipoValor} ${this.valor.toFixed(2)} | Data: ${this.data.toLocaleString()}`;
        if (this.clienteTransferencia) {
            info += ` | Cliente Transferência: ${this.clienteTransferencia.getNome()}`;
        }
        return info;
    }


}