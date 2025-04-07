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
select cpf "CPF", nome as "Funcionário", 
	date_format(dataNasc, '%d/%m/%Y') "Data Nascimento",
	replace(replace(sexo, 'F', "Feminino"),'M', "Masculino") "Gênero", 
    estadoCivil "Estado Civil", email "E-mail", 
    concat(ch, " horas") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão", 
	date_format(dataAdm, '%h:%i %d/%m/%Y') "Data Admissão"
		from funcionario
			order by nome;



