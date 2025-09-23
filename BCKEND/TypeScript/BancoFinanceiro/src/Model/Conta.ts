import { Agencia } from "./Agencia";
import { Cliente } from "./Cliente";
import { TipoTransacao, Transacao } from "./Transacao";

export class Conta {
    private cliente: Cliente;
    private numero: number;
    private agencia: Agencia;
    private dataCriacao: Date;
    private saldo: number;
    private status: boolean;
    private transacoes: Transacao[];

    constructor(cliente: Cliente, numero: number, agencia: Agencia) {
        this.cliente = cliente;
        this.numero = numero;
        this.agencia = agencia;
        this.dataCriacao = new Date();
        this.saldo = 0;
        this.status = true;
        this.transacoes = [];
    }

    public depositar(valor: number): boolean {
        if (valor <= 0 || !this.status) {
            console.log("Depósito inválido ou conta inativa.");
            return false;
        }else {
            this.saldo += valor;
            const transacao = new Transacao(TipoTransacao.DEPOSITO, valor, 
                '+');
            this.transacoes.push(transacao);
            return true;
        }
    }

    public sacar(valor: number): boolean {
        if (valor <= 0 || valor > this.saldo || !this.status) {
            console.log("Saque inválido, saldo insuficiente ou conta inativa.");
            return false;
        } else {
            this.saldo -= valor;
            const transacao = new Transacao(TipoTransacao.SAQUE, valor, 
                '-');
            this.transacoes.push(transacao);
            return true;
        }
    }

    // transferir para outra conta

    // gerar extrato

    public getCliente(): Cliente {
        return this.cliente;
    }

    public getNumero(): number {
        return this.numero;
    }

    public getAgencia(): Agencia {
        return this.agencia;
    }

    public getDataCriacao(): Date {
        return this.dataCriacao;
    }  

    public isAtiva(): boolean {
        return this.status;
    }

}