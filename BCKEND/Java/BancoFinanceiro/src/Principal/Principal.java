package Principal;

import java.util.Date;

import Model.Agencia;
import Model.Cliente;
import Model.ContaCorrente;
import Model.ContaPoupanca;
import Model.Endereco;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println("Olá mundo!");
		
		Endereco endCarlos = new Endereco("PE", "Recife", "Santo Amaro", 
				"Rua Maciel Monteiro", 345, null, "50070-780");
		
		Endereco endVitoria = new Endereco("PE", "Recife", "Varzéa", 
				"Rua Eng José Soares", 546, null, "50700-012");
		
		Endereco endAgSuassuna = new Endereco("PE", "Recife", "Santo Amaro", 
				"Rua Suassuana", 1234, null, "50070-750");
	
		// System.out.println(endCarlos);
		
		Cliente joaoCarlos = new Cliente("João Carlos Junior", 
					"123.456.789-00", new Date(1998, 06, 18), 2344325, 
					"joao.carlos.jr@gmail.com", "81999889988", endCarlos);
		
		Cliente vitoria = new Cliente("Vitória de Gouveia Zambom", 
				"345.456.789-00", new Date(2004, 04, 11), 1114325, 
				"vitoriaNaoRegia@gmail.com", "81999887766", endVitoria);
		
		// System.out.println(joaoCarlos);
		
		Agencia agSuassuna = new Agencia("Ag da Suassuna", 1235,
				"ag.suassuna@banco.senac.br", "8121234567", endAgSuassuna);
		
		ContaCorrente contaJoao = new ContaCorrente(joaoCarlos, 1234, agSuassuna);
		ContaPoupanca contaVitoria = new ContaPoupanca(vitoria, 4321, agSuassuna);
		
		contaJoao.depositar(3000);
		contaJoao.sacar(500);
		contaJoao.realizarPagamento(700, "Aluguel");
		contaJoao.realizarPagamento(120, "Energia");
		contaJoao.realizarPagamento(130, "Internet");
		
		contaVitoria.depositar(3200);
		contaVitoria.realizarPagamento(1400, "Aluguel");
		contaVitoria.realizarPagamento(80, "Energia");
		contaVitoria.realizarPagamento(100, "Internet");
		contaVitoria.realizarPagamento(1100, "Cartão NuBank");
		contaJoao.transferir(400, contaVitoria);
		contaVitoria.sacar(200);
		
		System.out.println(contaJoao.gerarExtrato());
		System.out.println(contaVitoria.gerarExtrato());
		
	}

}
