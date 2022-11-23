-- Inserção de dados bd oficina

use oficina;

-- dados clientes

insert into Cliente (CPF, Cnome, Veiculo, Contato, Endereço) values
					('25478569632','Marcos antonio', 'monza','125478963210','Av. República do Líbano, n.º 1.945, Setor Oeste, Goiânia-GO'),
                    ('14528796325','Jose carlos','Palio','125436985021','Rua Olinto Manso Pereira, n.º 45, Setor Sul, Goiânia-GO'),
                    ('10239748565','Antonio ferreira','Cadete','078965412302','Rua 202, n.º 267, Setor Vila Nova, Goiânia-GO'),
                    ('10236058746','Vanessa buril','corsa','124785303698','Rua C-135 esq. c/ C-149, Qd.291, Jardim América, Goiânia-GO'),
                    ('25680147236','Edmundo ferreira','fusca','853974123652','Rua Pedro Sifuentes Machado, n.º 400, Centro, Itapuranga-GO'),
                    ('12685479325','Leonardo medeiros','santana','210420369054','Av Goiás, Qd.12, Lt: 13 e 14, Centro, Santo Antônio do Descoberto'),
                    ('12345678998','Joao Felix','uno','123456789101','Av. Nero Macedo, n.º 400, 1º Piso, Cidade Jardim, Goiânia-Go,'),
                    ('98765432109','Ronaldo Batista','gol','023987856398','Av. Anhanguera, n.º 2.727, Setor Leste Universitário'),
                    ('12547896325','Vencio domingues','s-10','874532169021','Rua 44, n.º 399, Setor Central, Goiânia-GO, CEP 74.063-010'),
                    ('10235854582','Samuel barbosa','toro','258974963695','Av Brasília, n.º 840, Setor Formosinha, Formosa-GO');

-- dados dos mecanicos

insert into Mecânico (Codigo, Mnome, Especialidade, Contato, Endereço) values
					(1, 'Joao carvalho', 'Motor','14528796325','Av. República do Líbano, n.º 1.945, Setor Oeste, Goiânia-GO'),
                    (2, 'Emilio faro1', 'Câmbio','12685479325','Rua Olinto Manso Pereira, n.º 45, Setor Sul, Goiânia-GO'),
                    (3, 'Jose augusto', 'Freios','12547896325','Rua Olinto Manso Pereira, n.º 45, Setor Sul, Goiânia-GO'),
                    (4, 'Murilo Jose', 'Mecanica Geral','25478569632','Av. República do Líbano, n.º 1.945, Setor Oeste, Goiânia-GO');
                    
-- dados Mão de Obra

insert into MãodeObra (Valor) values
					(10.00),
                    (35.50),
                    (125.00),
                    (200.00),
                    (10.00),
                    (15.50),
                    (12.00),
                    (350.00),
                    (1000.00),
                    (5000.00);

-- dados Peças

insert into Peças (Valor, Descrição)values
				(199.00, 'Morcego Bucha Barra Tensor Estabilizador'),
                (150.00,'Pastilha de freio'),
                (220.60,'Bomba de Direção Hidraulica'),
                (90.20,'Barra estabilizadora'),
                (99.90,'Coletor de escape'),
                (490.00,'Motor de arranque'),
                (319.90,'Bico Injetor'),
                (300.00,'Silenciador'),
                (60.59,'Braços'),
                (500.00,'Amortecedor');
                    
-- dados OrdemdeServiço

insert into OrdemdeServiço 	(idClienteServiço, idMaoServiço, idMecanicoServiço, Estatus, Valor, DataEmissão)values
							(21,1,3,'Concluida',645.85,'2020-03-28'),
							(24,10,1,default,1500.00,'2020-03-12'),
							(30,5,4,'Concluida',250.00,'2022-05-02');
                            
                    

-- dados Pecas ordem de serviço

insert into Pecaordemdeserviço 	(idpecas_pecasor, idordem_pecas)values
								(1,1),
                                (6,2),
                                (5,2),
                                (6,2),
                                (10,2),
                                (2,3),
                                (2,1),
                                (3,3),
                                (4,1),
                                (8,3);

                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
