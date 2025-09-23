//console.log("Sistema Bancário em TypeScript!");
import { Agencia } from "./Model/Agencia";
import { Cliente } from "./Model/Cliente";
import { Endereco } from "./Model/Endereco";

const endCarlos = new Endereco("PE", "Recife", "Santo Amaro", 
    "Maciel Monteiro", 345, "50070-780");

const endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro", 
    "Rua Suassuna", 1235, "50070-750");

//console.log(endCarlos.toString());

const joaoCarlos = new Cliente("João Carlos", "123.456.789-00", 
    new Date("1990-05-15"), "SSP-PE-12.345.678", "joao.carlos.jr@gmail.com",
    "(81) 91234-5678", endCarlos);

//console.log(joaoCarlos.toString());

const agenciaSuassuna = new Agencia("Ag Suassuna", 1235, 
        "agSuassun@banco.senac.br", "(81) 3344-5566", endAgSuassuna);

console.log(agenciaSuassuna.toString());