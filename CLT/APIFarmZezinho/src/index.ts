import { AppDataSource } from "./db/data-source";
import { Cargo } from "./models/Cargo";
import CargoRepository from "./repositories/CargoRepository";

AppDataSource.initialize()
    .then(() => {
        // here you can start to work with your database
        console.log(`Database is running.`);
        const cargo1 = new Cargo(515210, "Auxiliar de Farmacia", 2300.00);
        const cargo2 = new Cargo(141410, "Gerente de Farmacia", 6800.00);
        const cargo3 = new Cargo(413110, "Auxiliar Financeiro de Farmacia", 2000.00);
        CargoRepository.save(cargo1)
                .then((cargo) => console.log(`Cargo ${cargo.nome} criado com sucesso!`))
                .catch((error) => console.log(`Erro ao criar o cargo: ${error.message}`));
        CargoRepository.save(cargo2)
                .then((cargo) => console.log(`Cargo ${cargo.nome} criado com sucesso!`))
                .catch((error) => console.log(`Erro ao criar o cargo: ${error.message}`));
        CargoRepository.save(cargo3)
                .then((cargo) => console.log(`Cargo ${cargo.nome} criado com sucesso!`))
                .catch((error) => console.log(`Erro ao criar o cargo: ${error.message}`));
        const cargo4 = new Cargo(413110, "Auxiliar Financeiro de Farmacia", 2600.00);
        CargoRepository.update(cargo4);
        console.log(CargoRepository.retrieveAll());
        console.log(CargoRepository.retrieveByCBO(413110));
        CargoRepository.delete(521130);
    })
    .catch((error) => console.log(error));

//console.log("Olá Mundo!");