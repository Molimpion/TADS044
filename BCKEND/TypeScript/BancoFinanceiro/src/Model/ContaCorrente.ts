import { Conta } from "./Conta";
import { Agencia } from "./Agencia";
import { Cliente } from "./Cliente";

export class ContaCorrente extends Conta {
    private taxaManutencao: number;

    constructor(cliente: Cliente, numero: number, agencia: Agencia, taxaManutencao: number) {
        super(cliente, numero, agencia);
        this.taxaManutencao = taxaManutencao;
    }

    getTaxaManutencao(): number {
        return this.taxaManutencao;
    }

    setTaxaManutencao(taxaManutencao: number): void {
        this.taxaManutencao = taxaManutencao;
    }

    public sacar(valor: number): boolean {
        return super.sacar(valor + valor*this.taxaManutencao);
    }
}