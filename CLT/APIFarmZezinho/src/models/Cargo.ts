import { Entity, PrimaryColumn, Column } from 'typeorm';

@Entity('Cargo') // Nome da tabela no banco de dados
export class Cargo {
    @PrimaryColumn({ type: 'int', name: 'cbo' })
    cbo: number;

    @Column({ type: 'varchar', length: 45, name: 'nome' })
    nome: string;

    @Column({ type: 'decimal', precision: 7, scale: 2, name: 'faixaSalario' })
    faixaSalario: number;

    constructor(cbo: number, nome: string, faixaSalario: number) {
        this.cbo = cbo;
        this.nome = nome;
        this.faixaSalario = faixaSalario;
    }
}