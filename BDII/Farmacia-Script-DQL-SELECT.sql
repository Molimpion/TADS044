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