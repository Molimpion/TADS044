import { Conta } from "./Conta";
import { Agencia } from "./Agencia";
import { Cliente } from "./Cliente";

export class ContaPoupanca extends Conta {
    private taxaRendimento: number;

    constructor(cliente: Cliente, numero: number, agencia: Agencia, taxaRendimento: number) {
        super(cliente, numero, agencia);
        this.taxaRendimento = taxaRendimento;
    }

    getTaxaRendimento(): number {
        return this.taxaRendimento;
    }

    setTaxaRendimento(taxaRendimento: number): void {
        this.taxaRendimento = taxaRendimento;
    }

    public depositar(valor: number): boolean {
        return super.depositar(valor * (1 + this.taxaRendimento));
    }
}