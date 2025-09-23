import { Endereco } from "./Endereco";

export class Agencia {
    private nome: string;
    private numero: number;
    private email: string;
    private telefone: string;
    private endereco: Endereco;

    constructor(nome: string, numero: number, email: string, telefone: string, endereco: Endereco) {
        this.nome = nome;
        this.numero = numero;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
    }

    public getNome(): string {
        return this.nome;
    }

    public getNumero(): number {
        return this.numero;
    }

    public getEmail(): string {
        return this.email;
    }

    public getTelefone(): string {
        return this.telefone;
    }

    public getEndereco(): Endereco {
        return this.endereco;
    }

    public setNome(nome: string): void {
        this.nome = nome;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public setTelefone(telefone: string): void {
        this.telefone = telefone;
    }

    public setEndereco(endereco: Endereco): void {
        this.endereco = endereco;
    }

    public toString(): string {
        return `Agência ${this.nome}, Nº ${this.numero}, E-mail: ${this.email}, Telefone: ${this.telefone}, localizado em ${this.endereco.toString()}`;
    }

}