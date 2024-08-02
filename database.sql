CREATE DATABASE tourist_guide;

USE tourist_guide;

CREATE TABLE Destinations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    region VARCHAR(255),
    latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE Attractions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destination_id INT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255),
    description TEXT,
    tips TEXT,
    FOREIGN KEY (destination_id) REFERENCES Destinations(id)
);

-- Inserir dados com coordenadas
INSERT INTO Destinations (name, description, image_url, region, latitude, longitude) VALUES
('São Luís', 'Descrição de São Luís', 'url_da_imagem', 'região', -2.5297, -44.3028),
('Lençóis Maranhenses', 'Descrição dos Lençóis Maranhenses', 'url_da_imagem', 'região', -2.7556, -42.8256),
('Alcântara', 'Descrição de Alcântara', 'url_da_imagem', 'região', -2.4067, -44.4192),
('Chapada das Mesas', 'Descrição da Chapada das Mesas', 'url_da_imagem', 'região', -6.0754, -46.0146),
('Carolina', 'Descrição de Carolina', 'url_da_imagem', 'região', -6.6084, -46.9788);
