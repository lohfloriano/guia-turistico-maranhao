// Crie o mapa e defina a posição inicial e o nível de zoom
const map = L.map('map').setView([-2.5297, -44.3028], 7); // Coordenadas do Maranhão

// Adicione uma camada de mapa (OpenStreetMap)
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// Função para adicionar marcadores dinamicamente
function addMarker(lat, lng, popupText) {
    L.marker([lat, lng]).addTo(map)
        .bindPopup(popupText);
}

// Adicionar marcadores para os locais
addMarker(-2.5297, -44.3028, 'São Luís');
addMarker(-2.7556, -42.8256, 'Lençóis Maranhenses');
addMarker(-2.4067, -44.4192, 'Alcântara');
addMarker(-6.0754, -46.0146, 'Chapada das Mesas');
addMarker(-6.6084, -46.9788, 'Carolina');
