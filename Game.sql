create database db_generation_game_online;

use db_generation_game_online;

Create table tb_classe(

id_classe int  auto_increment NOT NULL,
poder_de_ataque double,
poder_de_defesa double,
habilidade varchar(40),
primary key(id_classe)
);

Create table tb_personagem (
id_personagem int auto_increment,
nome_personagem varchar(20),
idade int,
sexo varchar(10),
dificuldade varchar(40),
velocidade decimal(5,1),
classe_id int not null,

primary key (id_personagem),
foreign key (classe_id) references tb_classe (id_classe)
);


insert into tb_classe(poder_de_ataque, poder_de_defesa, habilidade)
values 
('2000', '1000', 'ler mentes'),
('5000', '2500', 'Arqueiro'),
('100', '50', 'Arqueiro'),
('5000', '5000', 'Velos'),
('55', '20', 'Borco espinho');

 

insert into tb_personagem(nome_personagem,idade,sexo,dificuldade,velocidade,classe_id) values 
('Beuna', '24','M','medium','20.5','1'),
('João', '30','M','hard','50.5','1'),
('Arthur', '40','M','hard','40.8','5'),
('ju', '20','F','hard','20.2','3'),
('Carli', '19','F','medium','28.3','3'),
('Cha', '18','M','har','21.3','5'),
('Cler', '39','M','medium','50.5','1'),
('Key', '35','F','hard','40.0','2');

select * from tb_personagem;

select p.id_personagem, p.nome_personagem, p.idade, p.sexo, p.dificuldade, c.id_classe, c.poder_de_ataque from tb_personagem p
inner join  tb_classe c on (p.classe_id=c.id_classe) 
where c.poder_de_ataque >2000;


select * from tb_personagem p
inner join tb_classe c on (p.classe_id=c.id_classe)
where c.poder_de_defesa between '1000' and '2000'
order by c.poder_de_defesa asc;


select p.nome_personagem from tb_personagem p
inner join tb_classe c on (p.classe_id=c.id_classe)
where p.name_personagem like "B%";

select * from tb_personagem p
inner join tb_classe c on (p.classe_id=c.id_classe)
order by nome_personagem;

select * from tb_personagem p
inner join tb_classe c on (p.classe_id=c.id_classe)
where c.habilidade in ("Arqueiro")
order by nome_personagem;







