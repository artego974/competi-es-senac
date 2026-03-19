use atv_competicao;

create table user(
id int primary key,
nome varchar(255) not null,
cpf varchar(11) unique not null,
email varchar(255) unique not null,
senha varchar(255) not null
);

create table cliente(
id int primary key,
nome varchar(255) not null,
cpf varchar(11) unique not null,
email varchar(255) unique not null,
senha varchar(255) not null
);

create table instrumentos(
id int primary key,
nome varchar(255),
clienteID int,
userID int,
FOREIGN KEY (clienteID) REFERENCES cliente(id),
FOREIGN KEY (userID) REFERENCES user(id)
);

create table ordem_servico(
id int primary key,
status varchar(255) not null,
clienteID int,
userID int,
instrumentoID int,
FOREIGN KEY (clienteID) REFERENCES cliente(id),
FOREIGN KEY (instrumentoID) REFERENCES instrumentos(id),
FOREIGN KEY (userID) REFERENCES user(id)
);

create table registro(
id int primary key,
data_hora date not null,
ordem_servicoID int,
FOREIGN KEY (ordem_servicoID) REFERENCES ordem_servico(id)
);

INSERT INTO `atv_competicao`.`user` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('1', 'daniel', '12345678901', 'daniel@gmail.com', '123');
INSERT INTO `atv_competicao`.`user` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('2', 'leo', '09876543210', 'leo@gmail.com', '123');
INSERT INTO `atv_competicao`.`user` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('3', 'dalvana', '98765432109', 'dalvana@gmail.com', '123');
INSERT INTO `atv_competicao`.`user` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('4', 'lucas', '87654321098', 'lucas@gmail.com', '123');
INSERT INTO `atv_competicao`.`user` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('5', 'valter', '76543210987', 'valter@gmail.com', '123');

INSERT INTO `atv_competicao`.`cliente` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('1', 'athos', '11233333333', 'athos@gmail.com', '123');
INSERT INTO `atv_competicao`.`cliente` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('2', 'decks', '11111111111', 'decks@gmail.com', '123');
INSERT INTO `atv_competicao`.`cliente` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('3', 'arthur', '22222222222', 'arthur@gmail.com', '123');
INSERT INTO `atv_competicao`.`cliente` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('4', 'anderson', '33333333333', 'anderson@gmail.com', '123');
INSERT INTO `atv_competicao`.`cliente` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES ('5', 'henrique', '44444444444', 'henrique@gmail.com', '123');

INSERT INTO `atv_competicao`.`ordem_servico` (`id`, `status`, `clienteID`, `userID`, `instrumentoID`) VALUES ('1', 'ABERTA', '1', '1', '1');
INSERT INTO `atv_competicao`.`ordem_servico` (`id`, `status`, `clienteID`, `userID`, `instrumentoID`) VALUES ('2', 'EM ANDAMENTO', '2', '2', '2');
INSERT INTO `atv_competicao`.`ordem_servico` (`id`, `status`, `clienteID`, `userID`, `instrumentoID`) VALUES ('3', 'ABERTA ', '3', '3', '3');
INSERT INTO `atv_competicao`.`ordem_servico` (`id`, `status`, `clienteID`, `userID`, `instrumentoID`) VALUES ('4', 'FINALIZADA', '4', '4', '4');
INSERT INTO `atv_competicao`.`ordem_servico` (`id`, `status`, `clienteID`, `userID`, `instrumentoID`) VALUES ('5', 'CANCELADA', '5', '5', '5');
