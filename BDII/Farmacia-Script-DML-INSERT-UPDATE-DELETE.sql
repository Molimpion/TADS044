-- SQL: DML - INSERT

insert into cliente (cpf, nome, email, dataNasc, sexo, telefone)
	value ("452.254.444-55", "Victoria Zambom", "viczambom@gmail.com",
		'2004-04-11', 'F', "(19)99286-9286");
        
insert into cliente 
	values ("161.116.611-66", "Arthur Silveira", 'M', "aspADS@gmail.com",
		"(81)98507-9785", '2004-07-14', 120),
        ("132.321.331-11", "Amanda Cruz", 'F', "amandacruz@gmail.com",
        "(84)98177-7781", '2000-08-26', 550),
        ("718.187.888-11", "Diego Henrique", 'M', "diegoHenr@gmail.com",
        "(81)98182-7755", '2005-05-26', 1530);
        
INSERT INTO cliente VALUES
    ("111.111.111-11", "Carlos Souza", 'M', "carlos.souza@gmail.com", "(81)98111-1111", '1990-01-01', 500),
    ("222.222.222-22", "Mariana Lima", 'F', "mariana.lima@gmail.com", "(81)98222-2222", '1985-02-12', 1000),
    ("333.333.333-33", "Fernando Alves", 'M', "fernando.alves@gmail.com", "(81)98333-3333", '1995-03-23', 1500),
    ("444.444.444-44", "Juliana Castro", 'F', "juliana.castro@gmail.com", "(81)98444-4444", '1988-04-04', 700),
    ("555.555.555-55", "Rafael Martins", 'M', "rafael.martins@gmail.com", "(81)98555-5555", '1992-05-15', 1200),
    ("666.666.666-66", "Larissa Costa", 'F', "larissa.costa@gmail.com", "(81)98666-6666", '1997-06-26', 950),
    ("777.777.777-77", "Thiago Almeida", 'M', "thiago.almeida@gmail.com", "(81)98777-7777", '1991-07-07', 1800),
    ("888.888.888-88", "Beatriz Santos", 'F', "beatriz.santos@gmail.com", "(81)98888-8888", '1993-08-18', 650),
    ("999.999.999-99", "Lucas Mendes", 'M', "lucas.mendes@gmail.com", "(81)98999-9999", '1996-09-29', 1300),
    ("101.101.101-01", "Ana Paula Fernandes", 'F', "ana.paula@gmail.com", "(81)98101-0101", '1994-10-10', 1100),
    ("202.202.202-02", "Gabriel Oliveira", 'M', "gabriel.oliveira@gmail.com", "(81)98202-0202", '1998-11-21', 750),
    ("303.303.303-03", "Patrícia Mendes", 'F', "patricia.mendes@gmail.com", "(81)98303-0303", '1990-12-12', 850),
    ("404.404.404-04", "Eduardo Santana", 'M', "eduardo.santana@gmail.com", "(81)98404-0404", '1989-01-22', 950),
    ("505.505.505-05", "Fernanda Oliveira", 'F', "fernanda.oliveira@gmail.com", "(81)98505-0505", '1993-02-13', 1050),
    ("606.606.606-06", "João Victor Brayner", 'M', "joao.victor@gmail.com", "(81)98606-0606", '1997-03-24', 1150),
    ("707.707.707-07", "Tatiane Araújo", 'F', "tatiane.araujo@gmail.com", "(81)98707-0707", '1992-04-05', 1250),
    ("808.808.808-08", "Ricardo Lima", 'M', "ricardo.lima@gmail.com", "(81)98808-0808", '1995-05-16', 1350),
    ("909.909.909-09", "Camila Rocha", 'F', "camila.rocha@gmail.com", "(81)98909-0909", '1987-06-27', 1450),
    ("111.222.333-44", "Saulo Melo", 'M', "saulo.melo@gmail.com", "(81)98112-2333", '1991-07-08', 1550),
    ("555.666.777-88", "Sofia Ribeiro", 'F', "sofia.ribeiro@gmail.com", "(81)98556-6777", '1994-08-19', 1650);

insert into enderecocli
	values ("132.321.331-11", "PE", "Recife", "Rosarinho", 
		"Rua Almirante de Carvalho", 102, "Ap 404", "50760-930"),
		("161.116.611-66", "PE", "Recife", "Jardim São Paulo",
        "Rua Carpina", 32, null, "50781-660"),
        ("452.254.444-55", "PE", "Recife", "Várzea", 
        "Rua João Francisco Lisboa", 121, "Ap 1902", "50741-100"),
        ("718.187.888-11", "PE", "Olinda", "Passarinho",
        "Rua Alto do passarinho", 45, null, "53170-130");
        
INSERT INTO enderecocli 
VALUES 
    ("101.101.101-01", "PE", "Recife", "Boa Viagem", "Avenida Boa Viagem", 100, "Ap 101", "51020-000"),
    ("111.111.111-11", "PE", "Recife", "Casa Amarela", "Rua do Futuro", 200, NULL, "52060-010"),
    ("111.222.333-44", "PE", "Olinda", "Rio Doce", "Rua das Flores", 50, NULL, "53090-150"),
    ("202.202.202-02", "PE", "Jaboatão", "Piedade", "Avenida Bernardo Vieira", 300, "Bloco B", "54410-000"),
    ("222.222.222-22", "PE", "Paulista", "Janga", "Rua das Ondas", 400, "Casa 2", "53439-100"),
    ("303.303.303-03", "PE", "Recife", "Torre", "Rua Real da Torre", 500, NULL, "50710-090"),
    ("333.333.333-33", "PE", "Olinda", "Carmo", "Rua do Amparo", 80, "Ap 302", "53120-080"),
    ("404.404.404-04", "PE", "Camaragibe", "Tabatinga", "Rua São João", 45, NULL, "54786-300"),
    ("444.444.444-44", "PE", "Recife", "Ipsep", "Rua Jean Emile Favre", 120, "Casa", "51200-130"),
    ("505.505.505-05", "PE", "Recife", "Derby", "Avenida Agamenon Magalhães", 350, "Bloco C", "52011-000"),
    ("555.555.555-55", "PE", "Paulista", "Maranguape", "Rua das Palmeiras", 99, NULL, "53431-200"),
    ("555.666.777-88", "PE", "Recife", "Boa Vista", "Rua da Aurora", 60, "Sala 12", "50050-000"),
    ("606.606.606-06", "PE", "Olinda", "Bairro Novo", "Rua Atlântica", 25, NULL, "53030-050"),
    ("666.666.666-66", "PE", "Recife", "Espinheiro", "Rua do Espinheiro", 88, "Ap 701", "52020-100"),
    ("707.707.707-07", "PE", "Jaboatão", "Candeias", "Rua das Gaivotas", 500, "Casa", "54430-300"),
    ("777.777.777-77", "PE", "Recife", "Imbiribeira", "Rua do Forte", 150, "Bloco A", "51150-120"),
    ("808.808.808-08", "PE", "Recife", "Tamarineira", "Rua Desembargador Góis Cavalcante", 75, NULL, "52041-280"),
    ("888.888.888-88", "PE", "Paulista", "Paratibe", "Rua do Comércio", 200, "Galpão", "53429-100"),
    ("909.909.909-09", "PE", "Recife", "Madalena", "Rua José Osório", 175, "Ap 901", "50710-080"),
    ("999.999.999-99", "PE", "Recife", "Poço da Panela", "Rua do Chacon", 300, "Casa 3", "52061-030");

INSERT INTO planosaude (Cliente_cpf, numero, nome) VALUES
    ('111.222.333-44', 'PS001', 'Unimed Essencial'),
    ('132.321.331-11', 'PS002', 'Amil Fácil'),
    ('161.116.611-66', 'PS003', 'Bradesco Saúde'),
    ('202.202.202-02', 'PS004', 'SulAmérica Direto'),
    ('222.222.222-22', 'PS005', 'Hapvida Premium'),
    ('303.303.303-03', 'PS006', 'Golden Cross'),
    ('333.333.333-33', 'PS007', 'NotreDame Intermédica'),
    ('404.404.404-04', 'PS008', 'Amil Blue'),
    ('444.444.444-44', 'PS009', 'Bradesco Top Nacional'),
    ('452.254.444-55', 'PS010', 'SulAmérica Clássico'),
    ('505.505.505-05', 'PS011', 'Unimed Premium'),
    ('606.606.606-06', 'PS012', 'Hapvida Saúde Total'),
    ('666.666.666-66', 'PS013', 'Amil One'),
    ('707.707.707-07', 'PS014', 'Golden Med'),
    ('718.187.888-11', 'PS015', 'SulAmérica Executivo'),
    ('909.909.909-09', 'PS016', 'NotreDame Advance'),
    ('999.999.999-99', 'PS017', 'Bradesco Saúde Especial');

-- SQL: DML - UPDATE
update cliente
	set nome = "Diego Henrique da Silva"
		where cpf = "718.187.888-11";

update cliente
	set cpf = "132.321.331-33"
		where cpf = "132.321.331-11";
        
update cliente
	set pontuacao = pontuacao + 500
		where sexo = 'F';

SET SQL_SAFE_UPDATES = 0;

update cliente
	set pontuacao = pontuacao * 1.2
		where pontuacao <= 1000;

update cliente
	set pontuacao = pontuacao + 1000
		where cpf in (select cliente_cpf from planosaude);

-- SQL: DML - DELETE

delete from cliente
	where cpf = "111.222.333-44";
    
delete from cliente
	where cpf in (select cliente_cpf from enderecocli where cidade = "Olinda");

delete from cliente;

start transaction;
delete from cliente
	where cpf in (select cliente_cpf from enderecocli where cidade = "Recife");
commit;
rollback;


