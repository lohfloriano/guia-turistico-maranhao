-- Criação do banco de dados
CREATE DATABASE tourist_guide;

-- Seleciona o banco de dados a ser usado
USE tourist_guide;

-- Criação da tabela Destinations
CREATE TABLE Destinations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    region VARCHAR(255)
);

-- Criação da tabela Attractions
CREATE TABLE Attractions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destination_id INT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255),
    description TEXT,
    tips TEXT,
    FOREIGN KEY (destination_id) REFERENCES Destinations(id)
);

-- Inserção de dados na tabela Destinations
INSERT INTO Destinations (name, description, image_url, region) VALUES
('São Luís', 'São Luís é a capital do Maranhão, conhecida por sua arquitetura colonial portuguesa e rica cultura. A cidade possui um centro histórico com várias construções da época colonial e é famosa por seu carnaval e festas populares.', 'images/sao_luis.jpg', 'Capital'),
('Alcântara', 'Alcântara é uma cidade histórica com ruínas coloniais e belas paisagens. A cidade oferece um ambiente tranquilo e é conhecida por suas igrejas históricas e a arquitetura colonial bem preservada.', 'images/alcantara.jpg', 'Histórico'),
('Lençóis Maranhenses', 'Os Lençóis Maranhenses são conhecidos por suas dunas de areia e lagoas de água doce. É um dos maiores e mais belos desertos de areia do Brasil, com paisagens impressionantes que atraem turistas de todo o mundo.', 'images/lencois.jpg', 'Natural'),
('Chapada das Mesas', 'A Chapada das Mesas é uma região com paisagens naturais impressionantes e cachoeiras. É um destino popular para ecoturismo e oferece trilhas e mirantes deslumbrantes.', 'images/chapada.jpg', 'Natural'),
('Carolina', 'Carolina é famosa por suas belezas naturais e pontos turísticos como a Cachoeira do Prata. É um local ideal para quem gosta de aventuras ao ar livre e contato com a natureza.', 'images/carolina.jpg', 'Natural');

-- Inserção de dados na tabela Attractions
INSERT INTO Attractions (destination_id, name, type, description, tips) VALUES
(1, 'Centro Histórico', 'Monumento', 'O centro histórico de São Luís é conhecido por sua arquitetura colonial portuguesa.', 'Visite durante o dia para melhor aproveitamento das atrações históricas.'),
(1, 'Teatro Arthur Azevedo', 'Teatro', 'Um dos teatros mais antigos do Brasil, com uma rica programação cultural.', 'Verifique a programação para apresentações e eventos especiais.'),
(2, 'Igreja de São Matias', 'Igreja', 'Uma das igrejas históricas de Alcântara, conhecida por sua arquitetura colonial.', 'A visita é gratuita, mas recomenda-se uma doação para a manutenção do patrimônio.'),
(2, 'Ruínas do Forte de Santo Antônio', 'Monumento', 'Ruínas de um forte colonial com vista para o Rio de Janeiro.', 'Ótimo local para fotografias e conhecer a história militar da região.'),
(3, 'Dunas de Lençóis', 'Paisagem', 'Dunas de areia branca e lagoas de água doce formam uma paisagem única.', 'Leve água e protetor solar, e evite caminhar durante o meio-dia.'),
(3, 'Lagoa Bonita', 'Lagoa', 'Uma das mais famosas lagoas dos Lençóis, com águas cristalinas e paisagens deslumbrantes.', 'Ótimo para nadar e relaxar, mas cuidado com a intensidade do sol.'),
(4, 'Cachoeira do Prata', 'Cachoeira', 'Uma impressionante cachoeira situada na Chapada das Mesas.', 'Use roupas de banho e prepare-se para uma caminhada até a cachoeira.'),
(4, 'Mirante da Chapada', 'Mirante', 'Um mirante com vistas panorâmicas da Chapada das Mesas.', 'Leve um binóculo para apreciar melhor a vista e prepare-se para uma leve caminhada.'),
(5, 'Cachoeira do Prata', 'Cachoeira', 'Uma bela cachoeira que é um dos principais atrativos de Carolina.', 'Ideal para banhos e caminhadas leves nas trilhas ao redor.'),
(5, 'Praia de Carimã', 'Praia', 'Uma praia com águas cristalinas e um ambiente tranquilo.', 'Leve protetor solar e aproveite a paisagem serena e relaxante.');
