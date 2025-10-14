//console.log("Sistema Bancário em TypeScript!");
import { Agencia } from "./Model/Agencia";
import { Cliente } from "./Model/Cliente";
import { Endereco } from "./Model/Endereco";
import { ContaCorrente } from "./Model/ContaCorrente";
import { ContaPoupanca } from "./Model/ContaPoupanca";

const endCarlos = new Endereco("PE", "Recife", "Santo Amaro", 
    "Maciel Monteiro", 345, "50070-780");
const endVitoria = new Endereco("PE", "Recife", "Varzea", 
    "Rua Eng José Soares", 234, "50120-080");

const endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro", 
    "Rua Suassuna", 1235, "50070-750");

//console.log(endCarlos.toString());

const joaoCarlos = new Cliente("João Carlos", "123.456.789-00", 
    new Date("1990-05-15"), "SSP-PE-12.345.678", "joao.carlos.jr@gmail.com",
    "(81) 91234-5678", endCarlos);
const vitoria = new Cliente("Vitoria Zambom", "321.456.789-00", 
    new Date("2004-04-11"), "SSP-PE-13.245.678", "vitoria.zambom@gmail.com",
    "(81) 91111-5678", endVitoria);

//console.log(joaoCarlos.toString());

const agenciaSuassuna = new Agencia("Ag Suassuna", 1235, 
        "agSuassun@banco.senac.br", "(81) 3344-5566", endAgSuassuna);

const contaJoao = new ContaCorrente(joaoCarlos, 123456, agenciaSuassuna, 0.01);
const contaVitoria = new ContaPoupanca(vitoria, 654321, agenciaSuassuna, 0.02);

contaJoao.depositar(3000);
contaJoao.realizarPagamento(120, "Internet");
contaJoao.realizarPagamento(700, "Aluguel");
contaJoao.realizarPagamento(100, "Energia");
contaJoao.sacar(500);

contaVitoria.depositar(3500);
contaVitoria.realizarPagamento(130, "Internet");
contaVitoria.realizarPagamento(1400, "Aluguel");
contaVitoria.realizarPagamento(120, "Energia");
contaVitoria.realizarPagamento(700, "Cartão Nubank");
contaVitoria.sacar(200);
contaJoao.transferir(500, contaVitoria);

console.log(contaJoao.imprimirExtrato());    
console.log(contaVitoria.imprimirExtrato());  