create database db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
vegetarianas varchar(255) not null,
nao_vegetarianas varchar(255) not null,

-- indicação da chave primaria que será a coluna de id 
primary key(id));

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255),
quantidade int,
tamanhoPizza varchar(255),
preco decimal(6,2),

-- campo que vai receber a chave estrangeira que virá da tabela de categorias
categoria_id BIGINT, 
-- indicação da chave primaria que será a coluna de id 
primary key(id),


-- aqui eu crio de fato o relacionamento entre tabelas, indicando o campo que vai receber a chave estrangeira(categoria_id), e de onde a chave estrangeira virá, da tabela de categorias, da coluna de id (tb_categorias.id)
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


insert into tb_categorias (vegetarianas,nao_vegetarianas)
values("brócolis com queijo","carne");

insert into tb_categorias (vegetarianas,nao_vegetarianas)
values("palmito","atum");

insert into tb_categorias (vegetarianas,nao_vegetarianas)
values("rucula com tomate","frango com catupiry");

SELECT * FROM tb_categorias;

insert into tb_pizzas (sabor, quantidade, tamanhoPizza, preco)
values ("brócolis com queijo", 2, "m", "100");

insert into tb_pizzas (sabor, quantidade, tamanhoPizza, preco)
values ("palmito", 4, "p", "200");

insert into tb_pizzas (sabor, quantidade, tamanhoPizza, preco)
values ("rucula com tomate", 6, "m", "500");

insert into tb_pizzas (sabor, quantidade, tamanhoPizza, preco)
values ("carne", 3, "m", "200");

insert into tb_pizzas (sabor, quantidade, tamanhoPizza, preco)
values ("atum", 1, "g", "200");

insert into tb_pizzas (sabor, quantidade, tamanhoPizza, preco)
values ("frango com catupiry", 3, "p", "100");

select * from tb_pizzas;

SELECT * FROM tb_produtos ORDER BY sabor;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.id=3;

