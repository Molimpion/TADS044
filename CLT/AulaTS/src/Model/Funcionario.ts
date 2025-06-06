export class Funcionario {
    //Atributos
    private cpf: string;
    private nome: string;
    private nomeSocial?: string;
    private genero: string;
    private dataNascimento: Date;
    private estadoCivil: string;
    private email: string;
    private cargaHoraria: number;
    private salario: number;
    private comissao?: number;
    private dataAdmissao: Date;
    private dataDemissao?: Date;

    //Constructor
    constructor(
        cpf: string,
        nome: string,
        genero: string,
        dataNascimento: Date,
        estadoCivil: string,
        email: string,
        cargaHoraria: number,
        salario: number,
        dataAdmissao: Date,
        nomeSocial?: string,
        comissao?: number,
        dataDemissao?: Date
    ) {
        this.cpf = cpf;
        this.nome = nome;
        this.nomeSocial = nomeSocial;
        this.genero = genero;
        this.dataNascimento = dataNascimento;
        this.estadoCivil = estadoCivil;
        this.email = email;
        this.cargaHoraria = cargaHoraria;
        this.salario = salario;
        this.comissao = comissao;
        this.dataAdmissao = dataAdmissao;
        this.dataDemissao = dataDemissao;
    }

    //Getters
    public getCpf(): string {
        return this.cpf;
    }

    public getNome(): string {
        return this.nome;
    }

    public getNomeSocial(): string | undefined {
        return this.nomeSocial;
    }

    public getGenero(): string {
        return this.genero;
    }
    
    public getDataNascimento(): Date {
        return this.dataNascimento;
    }
    
    public getEstadoCivil(): string {
        return this.estadoCivil;
    }
   
    public getEmail(): string {
        return this.email;
    }
   
    public getCargaHoraria(): number {
        return this.cargaHoraria;
    }
    
    public getSalario(): number {
        return this.salario;
    }
    
    public getComissao(): number | undefined {
        return this.comissao;
    }
    
    public getDataAdmissao(): Date {
        return this.dataAdmissao;
    }
   
    public getDataDemissao(): Date | undefined {
        return this.dataDemissao;
    }

    //Setters
    public setNome(nome: string): void {
        this.nome = nome;
    }

    public setNomeSocial(nomeSocial: string | undefined): void {
        this.nomeSocial = nomeSocial;
    }

    public setGenero(genero: string): void {
        this.genero = genero;
    }

    public setEstadoCivil(estadoCivil: string): void {
        this.estadoCivil = estadoCivil;
    }

    public setEmail(email: string): void {
        this.email = email;
    }

    public setCargaHoraria(cargaHoraria: number): void {
        this.cargaHoraria = cargaHoraria;
    }

    public setSalario(salario: number): void {
        this.salario = salario;
    }

    public setComissao(comissao: number | undefined): void {
        this.comissao = comissao;
    }

    public setDataDemissao(dataDemissao: Date | undefined): void {
        this.dataDemissao = dataDemissao;
    }

    //Método toString
    public toString(): string {
        return `Funcionario: ${this.nome}, CPF: ${this.cpf}, Email: ${this.email}, Data de Admissão: ${this.dataAdmissao.toLocaleDateString()}, Salário: R$${this.salario.toFixed(2)}, Carga Horária: ${this.cargaHoraria} horas/semana, Comissão: R$${this.comissao ? this.comissao.toFixed(2) : '0.00'}, Data de Demissão: ${this.dataDemissao ? this.dataDemissao.toLocaleDateString() : 'Ativo'}`;
    }
}