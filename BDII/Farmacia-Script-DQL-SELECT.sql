-- SQL: DQL - SELECT

select * from funcionario;

select cpf, nome, dataNasc, sexo, estadoCivil, 
	email, ch, salario, comissao, dataAdm 
		from funcionario;
        
select cpf, nome, dataNasc, sexo, estadoCivil, 
	email, ch, salario, comissao, dataAdm 
		from funcionario
			order by salario desc;
            
select cpf, nome, dataNasc, sexo, estadoCivil, 
	email, ch, salario, comissao, dataAdm 
		from funcionario
			order by sexo, salario desc;
            
-- https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html#function_date-format
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_format
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_replace
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where sexo = 'F'
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where dataAdm < '2020-03-11'
				order by nome;

select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where timestampdiff(year, dataNasc, now()) < 45 and
            timestampdiff(year, dataNasc, now()) >= 35
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where timestampdiff(year, dataNasc, now()) between 35 and 45
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where (salario + comissao) between 3000 and 4000
				order by nome;
                
select avg(salario + comissao) from funcionario;

select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where (salario + comissao) >= 
					(select avg(salario + comissao) from funcionario)
				order by nome;

select avg(salario + comissao) into @medSalario from funcionario;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where (salario + comissao) < @medSalario
				order by nome;

select @medSalario;

set @medSalario = 3000;

select nome into @lista from funcionario;

select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where (salario + comissao) < 
					(select avg(salario + comissao) from funcionario)
				and estadoCivil = "Solteiro" 
                or estadoCivil = "Solteira"             
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where (salario + comissao) < 
					(select avg(salario + comissao) from funcionario)
				and estadoCivil like "Solt%"            
				order by nome;
                
select Funcionario_cpf from enderecofunc where cidade like "Olinda";
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			where cpf in 
					(select Funcionario_cpf from enderecofunc 
						where cidade like "Olinda")        
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão",
	cidade "Cidade",
    bairro "Bairro"
		from funcionario, enderecofunc
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão",
	cidade "Cidade",
    bairro "Bairro"
		from funcionario, enderecofunc
			where funcionario.cpf = enderecofunc.Funcionario_cpf 
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão",
	cidade "Cidade",
    bairro "Bairro"
		from funcionario, enderecofunc
			where funcionario.cpf = enderecofunc.Funcionario_cpf
				and comp is null
				order by nome;
                
select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
    timestampdiff(year, dataNasc, now()) "Idade",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão",
	cidade "Cidade",
    bairro "Bairro"
		from funcionario
			inner join enderecofunc on Funcionario_cpf = cpf
				where comp is null
				order by nome;
                
select dep.cpf "CPF do Dependente",
	upper(dep.nome) "Dependente",
	dep.parentesco "Parentesco",
    date_format(dep.dataNasc, '%d/%m/%Y')  "Data de Nascimento",
    timestampdiff(year, dep.dataNasc, now()) "Idade",
    func.nome "Responsável"
	from dependente dep
		inner join funcionario func on dep.Funcionario_cpf = func.cpf;

select func.nome "Funcionário",
	date_format(fer.dataInicio, '%d/%m/%Y') "Data de Início",
	date_format(fer.dataFim, '%d/%m/%Y') "Data de Fim",
    fer.qtdDias "Quantidade de Dias",
    fer.anoRef "Ano de Referência"
	from ferias fer
		inner join funcionario func on func.cpf = fer.Funcionario_cpf
		order by func.nome;


select func.cpf "CPF", upper(func.nome) as "Funcionário",
    concat(func.ch, " horas") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão", 
    count(dep.cpf) "Quantidade de Filhos"
		from funcionario func
			left join dependente dep on dep.Funcionario_cpf = func.cpf
				group by func.cpf
					order by func.nome;

select cpf, nome, 
	timestampdiff(year, dataNasc, now()) "idade",
	Funcionario_cpf
		from dependente;

create view depIdade as
	select cpf, nome, 
		timestampdiff(year, dataNasc, now()) "idade",
		Funcionario_cpf
			from dependente
				where timestampdiff(year, dataNasc, now()) <= 5;

select * from depidade;

select func.cpf "CPF", upper(func.nome) as "Funcionário",
    concat(func.ch, " horas") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão", 
    concat("R$ ", format(count(dep.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
		from funcionario func
			left join depidade dep on dep.Funcionario_cpf = func.cpf
					group by func.cpf
						order by func.nome;

create view vRelPagamento as
	select func.cpf "CPF", upper(func.nome) as "Funcionário",
		concat(func.ch, " horas") "Carga-horária", 
		concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
		concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão", 
		concat("R$ ", format(count(dep.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
			from funcionario func
				left join depidade dep on dep.Funcionario_cpf = func.cpf
						group by func.cpf
							order by func.nome;
                            
select * from vrelpagamento;

select func.cpf "CPF", upper(func.nome) as "Funcionário", func.email "Email", 
	ifnull(group_concat(distinct tel.numero separator ' | '), "Não informado!") "Telefones",
    concat(func.ch, " horas") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(count(dep.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
		from funcionario func
			left join depidade dep on dep.Funcionario_cpf = func.cpf
            left join telefone tel on tel.Funcionario_cpf = func.cpf
					group by func.cpf
						order by func.nome;
                        
select func.cpf "CPF", func.nome "Funcionario",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	crg.nome "Cargo", 
    group_concat(dep.nome separator " | ") "Departamento"
	from trabalhar trb
		inner join funcionario func on func.cpf = trb.Funcionario_cpf
        inner join cargo crg on crg.cbo = trb.Cargo_cbo
        inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
			group by func.cpf, crg.cbo
				order by func.nome;

select func.cpf "CPF", func.nome "Funcionario",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	crg.nome "Cargo", 
    group_concat(dep.nome separator " | ") "Departamento"
	from trabalhar trb
		inner join funcionario func on func.cpf = trb.Funcionario_cpf
        inner join cargo crg on crg.cbo = trb.Cargo_cbo
        inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
			group by func.cpf, crg.cbo
				order by func.nome, count(dep.nome) desc;

-- cpf, nome, qtdVenda, Faturamento total de dinhero
select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	count(vnd.idVenda) "Quantidade de Vendas", 
    concat("R$ ", format(sum(vnd.valorTotal), 2, 'de_DE')) "Faturamento"
	from funcionario func
		inner join venda vnd on vnd.Funcionario_cpf = func.cpf
			group by func.cpf
				order by sum(vnd.valorTotal) desc;

select cli.nome "Cliente", cli.cpf "CPF", 
	-- decode(cli.sexo, 'F', "Feminino", 'M', "Masculino", "Outro") "Gênero"
    case cli.sexo
		when 'F' then "Feminino"
        when 'M' then "Masculino"
        else "Outro"
	end "Gênero",
    cli.telefone "Telefone", cli.email "Email",
    timestampdiff(year, cli.dataNasc, now()) "Idade",
    case 
		when timestampdiff(year, cli.dataNasc, now()) between 35 and 45 then "Agora"
		when timestampdiff(year, cli.dataNasc, now()) between 25 and 35 then "Ainda essa semana"
        else "Quando tiver tempo"
    end "Entrar em Contato"
	from cliente cli
		where cli.sexo = 'F'
			order by 7, cli.nome;

select upper(cli.nome) "Cliente", cli.cpf "CPF", 
	cli.telefone "Telefone", cli.email "Email",
    ifnull(endcli.cidade,"Endereço não Informado") "Cidade",
    case 
		when endcli.cidade like "%linda" and ps.Cliente_cpf is not null
			then "Agora"
		when  ps.Cliente_cpf is not null
			then "Ainda essa semana"
        else "Quando tiver tempo"
    end "Entrar em Contato"
	from cliente cli
		left join planosaude ps on ps.cliente_cpf = cli.cpf
        left join enderecocli endcli on endcli.cliente_cpf = cli.cpf
		order by 6, cli.nome;

create view vRelManoel as
	select cli.nome "Cliente", cli.cpf "CPF", 
		cli.telefone "Telefone", cli.email "Email",
		ifnull(endcli.cidade,"Endereço não Informado") "Cidade",
		case 
			when endcli.cidade like "%linda" and ps.Cliente_cpf is not null
				then "Agora"
			when  ps.Cliente_cpf is not null
				then "Ainda essa semana"
			else "Quando tiver tempo"
		end "Entrar em Contato"
		from cliente cli
			left join planosaude ps on ps.cliente_cpf = cli.cpf
			left join enderecocli endcli on endcli.cliente_cpf = cli.cpf
			order by 6, cli.nome;
            
select * from vRelManoel
	where Email like "%@gmail.com";
    
select substr(dataVenda, 1, 4) "Ano",
	count(idVenda) "Quantidade de Vendas",
    sum(valorTotal - desconto) "Faturamento"
	from venda
		group by substr(dataVenda, 1, 4);

select upper(fp.tipo) "Forma de Pagamento",
	count(idVenda) "Quantidade de Vendas",
    format(sum(valorTotal - desconto), 2, 'de_DE') "Faturamento"
	from venda vnd
		inner join formapag fp on fp.Venda_idVenda = vnd.idVenda
			group by fp.tipo
				order by 3 desc;
		
select func.cpf "CPF", upper(func.nome) as "Funcionário", 
	concat(func.ch, " horas") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(count(dep.cpf) * 280, 2, 'de_DE')) "Auxílio Creche"
		from funcionario func
			left join depidade dep on dep.Funcionario_cpf = func.cpf
            left join telefone tel on tel.Funcionario_cpf = func.cpf
				where func.salario >= (select avg(salario) from funcionario)
					group by func.cpf
						order by func.nome;

select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	count(vnd.idVenda) "Quantidade de Vendas", 
    concat("R$ ", format(sum(vnd.valorTotal), 2, 'de_DE')) "Faturamento"
	from funcionario func
		inner join venda vnd on vnd.Funcionario_cpf = func.cpf
			where func.sexo = 'F'
				group by func.cpf
					having sum(vnd.valorTotal) >= 500
						order by sum(vnd.valorTotal) desc;
-- PetShop | Questão 11
select prod.nome "Nome Produto", 
	format(icomp.valorCompra, 2, 'de_DE') "Valor Produto(R$)",
    frc.nome "Fornecedor", frc.email "Email Fornecedor",
    tel.numero "Telefone Fornecedor"
	from produtos prod
		left join itenscompra icomp on icomp.Produtos_idProduto = prod.idProduto
        inner join compras comp on comp.idCompra = icomp.Compras_idCompra
        inner join fornecedor frc on frc.cpf_cnpj = comp.Fornecedor_cpf_cnpj
        left join telefone tel on tel.Fornecedor_cpf_cnpj = frc.cpf_cnpj
			order by frc.nome;

delimiter $$
create function auxTransporte(pCPF varchar(14)) 
	returns decimal(6,2) deterministic
    begin
		declare auxTrap decimal(6,2) default 0.0;
        declare auxCidade varchar(60);
        declare auxSalario decimal(7,2);
        select cidade into auxCidade from enderecofunc
			where Funcionario_cpf like pCPF;
		select salario  into auxSalario from funcionario
			where cpf like pCPF;
        if auxCidade like "Recife" 
			then set auxTrap = 22 * 2 * 4.3;
		else set auxTrap = 22 * 2 * 5.1;
        end if;
        set auxTrap = auxTrap - auxSalario * 0.06;
        if auxTrap > 0 then return auxTrap;
		else return 0.0;
        end if;
    end $$
delimiter ;

delimiter $$
create function calcINSS(pSalario decimal(7,2))
	returns decimal(6,2) deterministic
    begin
		declare inss decimal(6,2);
        if pSalario <= 1518 
			then set inss = pSalario * 0.075;
		elseif pSalario > 1518 and pSalario <= 2793.88
			then set inss = pSalario * 0.09;
		elseif pSalario > 2793.88 and pSalario <= 4190.83
			then set inss = pSalario * 0.12;
		elseif pSalario > 4190.83 and pSalario <= 8157.41
			then set inss = pSalario * 0.14;
		else set inss = 8157.41 * 0.14;
        end if;
        return inss;
    end $$
delimiter ;

delimiter $$
create function calcIRRF(pSalario decimal(7,2))
	returns decimal(6,2) deterministic
    begin
		declare IRRF decimal(6,2);
        if pSalario <= 2259.20 
			then set IRRF = 0.0;
		elseif pSalario > 2259.20 and pSalario <= 2826.65
			then set IRRF = pSalario * 0.075;
		elseif pSalario > 2826.65 and pSalario <= 3751.05
			then set IRRF = pSalario * 0.15;
		elseif pSalario > 3751.05 and pSalario <= 4664.68
			then set IRRF = pSalario * 0.225;
		else set IRRF = pSalario * 0.275;
        end if;
        return IRRF;
    end $$
delimiter ;

-- https://www.idinheiro.com.br/calculadoras/calculadora-de-salario-liquido/
select func.cpf "CPF", upper(func.nome) as "Funcionário", 
	concat(func.ch, " horas") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(count(dep.cpf) * 280, 2, 'de_DE')) "Auxílio Creche",
    concat("R$ ", format(auxTransporte(func.cpf), 2, 'de_DE')) "Auxílio Transporte",
    concat("R$ -", format(calcINSS(func.salario), 2, 'de_DE')) "INSS",
    concat("R$ -", format(calcIRRF(func.salario), 2, 'de_DE')) "IRRF",
    concat("R$ ", format(func.salario + func.comissao + 
		count(dep.cpf) * 280 + auxTransporte(func.cpf) - 
        calcINSS(func.salario) - calcIRRF(func.salario)
		, 2, 'de_DE'))"Salário Líquido"
		from funcionario func
			left join depidade dep on dep.Funcionario_cpf = func.cpf
				group by func.cpf
					order by func.nome;

delimiter $$
create procedure cadFuncionario(in pcpf varchar(14),
								in pnome varchar(60) ,
								in pnomeSocial varchar(45) ,
								in pemail varchar(45) ,
								in psexo char(1) ,
								in pestadoCivil varchar(15) ,
								in pdataNasc date ,
								in pch int ,
								in psalario decimal(7,2),
								in pcomissao decimal(6,2),
								in pdataAdm datetime,
                                in pnumTel1 varchar(15),
                                in pnumTel2 varchar(15),
                                in pnumTel3 varchar(15),
                                in puf char(2),
								in pcidade varchar(60),
								in pbairro varchar(60),
								in prua varchar(70),
								in pnumero int,
								in pcomp varchar(45),
								in pcep varchar(9))
	begin
		insert into funcionario
			values (pcpf,pnome,pnomeSocial,pemail,psexo,pestadoCivil,
						pdataNasc,pch,psalario,pcomissao,pdataAdm, null, 0.0);
		insert into telefone (numero, funcionario_cpf)
			value (pnumTel1, pcpf);
		if pnumTel2 is not null 
			then insert into telefone (numero, Funcionario_cpf)
								value (pnumTel2, pcpf);
		end if;
        if pnumTel3 is not null 
			then insert into telefone (numero, Funcionario_cpf)
								value (pnumTel3, pcpf);
		end if;
        insert into enderecofunc
			value (pcpf,puf,pcidade,pbairro,prua,pnumero,pcomp,pcep);
    end $$
delimiter ;

call cadFuncionario("161.661.116-66", "Arthur Silveira de Paula", null, 
	"arthur.silveira@gmail.com", "M", "Solteiro", '2004-07-14', 30, 2000,
	0.0, '2025-06-02 08:00', '(81)98507-0785', '(81)98002-8922', null, 'PE',
    'Recife', 'Jardim São Paulo', 'Rua Carpina', 345, null, '50781-660');

delimiter $$
create trigger tgrAftInsertItensVendaProd after insert
	on itensvendaprod
	for each row
		begin
			update produto
				set quantidade = quantidade - new.quantidade
					where idProduto = new.Produto_idProduto;
			update venda
				set valorTotal = valorTotal + (new.quantidade * new.valorDeVenda) - new.descontoProd
					where idVenda = new.Venda_idVenda;
		end $$
delimiter ;

insert into venda (dataVenda, valorTotal, desconto, Funcionario_cpf, Cliente_cpf)
	value (now(), 0.0, 0, "123.456.789-02", "432.109.876-54");

insert into itensvendaprod
	values (264, 3, 15, 3, 15), 
			(264, 9, 40, 2, 0),
            (264, 13, 15, 3, 0);


