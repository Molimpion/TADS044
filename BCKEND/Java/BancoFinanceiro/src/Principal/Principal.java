package Principal;

import java.util.Date;

import Model.Cliente;
import Model.Endereco;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println("Olá mundo!");
		
		Endereco endCarlos = new Endereco("PE", "Recife", "Santo Amaro", 
				"Rua Maciel Monteiro", 345, null, "50070-780");
	
		System.out.println(endCarlos);
		
		Cliente joaoCarlos = new Cliente("João Carlos Junior", 
					"123.456.789-00", new Date(1998, 06, 18), 2344325, 
					"joao.carlos.jr@gmail.com", "81999889988", endCarlos);
		
		System.out.println(joaoCarlos);
		
	}

}
