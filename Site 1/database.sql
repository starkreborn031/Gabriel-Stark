-- Criação da tabela Cliente
CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Criação da tabela Servico
CREATE TABLE Servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2)
);

-- Criação da tabela Agendamento
CREATE TABLE Agendamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    servico_id INT,
    data_atendimento DATE,
    hora_atendimento TIME,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (servico_id) REFERENCES Servico(id)
);
