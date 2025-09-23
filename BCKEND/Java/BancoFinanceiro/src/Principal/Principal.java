package Principal;

import java.util.Date;

import Model.Agencia;
import Model.Cliente;
import Model.Endereco;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println("Olá mundo!");
		
		Endereco endCarlos = new Endereco("PE", "Recife", "Santo Amaro", 
				"Rua Maciel Monteiro", 345, null, "50070-780");
		
		Endereco endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro", 
				"Rua Suassuana", 1234, null, "50070-750");
	
		// System.out.println(endCarlos);
		
		Cliente joaoCarlos = new Cliente("João Carlos Junior", 
					"123.456.789-00", new Date(1998, 06, 18), 2344325, 
					"joao.carlos.jr@gmail.com", "81999889988", endCarlos);
		
		// System.out.println(joaoCarlos);
		
		Agencia agSuassuna = new Agencia("Ag da Suassuna", 1235,
				"ag.suassuna@banco.senac.br", "8121234567", endAgSuassuna);
		
		System.out.println(agSuassuna);
		
	}

}
