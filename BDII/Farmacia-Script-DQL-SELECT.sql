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
                

