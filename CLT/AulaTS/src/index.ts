import { Funcionario } from "./Model/Funcionario";

//console.log("Hello World! Maira Lo");

const amanda = new Funcionario(
    "123.456.789-01",
    "Amanda Cruz",
    "F",
    new Date("2000-08-01"),
    "Solteira",
    "amanda.cruz@gmail.com",
    40,
    8000,
    new Date("2023-02-05"),
    "",
    500);

console.log(amanda);

console.log(amanda.toString());
