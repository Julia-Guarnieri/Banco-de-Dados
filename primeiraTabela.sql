CREATE DATABASE dh_rh;

CREATE TABLE tb_colaboradores (

id bigint auto_increment,
nome varchar(255),
idade int(2),
salario decimal(8,2),
cargo varchar(255),

-- indicação da chave primaria que será a coluna de id 
primary key(id)
);

-- comando de inserção de dados dentro da tabela de colaboradores **CUIDADO** O comando insert não bloqueia o envio de dados repetidos, rode ele apenas uma vez, confira se ele inseriu, e então insira os outros dados em seguida
	insert into tb_colaboradores(nome,idade,salario,cargo)
    values("Julia",25,20000.99,"desenvolvedora");
    
    select * from tb_colaboradores;
    select * from tb_colaboradores where salario > 2000;
    select * from tb_colaboradores where salario < 2000;
    
    alter table tb_colaboradores
    modify column salario decimal(10,2);
    
    update tb_colaboradores
    set salario = 50000.99
    where id=2;
