-- Cria banco de dados de uma oficina

create database oficina;

use oficina;

-- cria tabela clientes

create table Cliente(
	idCliente int primary key auto_increment,
    CPF char (11),
    Cnome varchar (30) not null,
    Veiculo varchar (15) not null,
    Contato char(12) not null,
    Endereço varchar (255),
    constraint unique_cpf_client unique (CPF)
);

-- cria tabela Mecânico

create table Mecânico(
	idMecânico int primary key auto_increment,
    Codigo int not null,
    Mnome varchar (30) not null,
    Especialidade varchar (15) not null,
    Contato char(12) not null,
    Endereço varchar (255),
    constraint unique_codigo_Mecânico unique (Codigo)
);

-- cria tabela Mão de Obra

create table MãodeObra(
	idMãodeObra int primary key auto_increment,
    Valor float not null
);

-- cria tabela Peças

create table Peças(
	idPeças int primary key auto_increment,
    Valor float not null,
    Descrição varchar (45) not null
);


-- cria tabela Orde de Serviço

create table OrdemdeServiço(
	idClienteServiço int,
    idMaoServiço int,
    idMecanicoServiço int,
    idOrdemdeServiço int primary key auto_increment,
    Estatus enum('Aberta', 'Concluida') default 'Aberta',
    Valor float not null,
    DataEmissão date not null,
    constraint fk_cliente_serviço foreign key (idClienteServiço) references Cliente (idCliente),
    constraint fk_maodeobra_serviço foreign key (idMaoServiço) references MãodeObra (idMãodeObra),
    constraint fk_mecanico_serviço foreign key (idMecanicoServiço) references Mecânico (idMecânico)
);


-- cria tabela pecas/ordem de serviço

create table Pecaordemdeserviço(
	idpecas_pecasor int,
    idordem_pecas int,
	constraint fk_pecas_pecasordem foreign key (idpecas_pecasor) references Peças (idPeças),
	constraint fk_ordem_servico foreign key (idordem_pecas) references OrdemdeServiço (idOrdemdeServiço)
);

show tables;

desc cliente;









