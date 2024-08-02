class Destination {
    constructor(id, name, description, imageUrl, region) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
        this.region = region;
    }
}

class Attraction {
    constructor(id, destinationId, name, type, description, tips) {
        this.id = id;
        this.destinationId = destinationId;
        this.name = name;
        this.type = type;
        this.description = description;
        this.tips = tips;
    }
}

async function fetchDestinations() {
    const response = await fetch('/destinations');
    const destinations = await response.json();
    displayDestinations(destinations);
}

function displayDestinations(destinations) {
    const container = document.getElementById('destinations');
    container.innerHTML = '';
    destinations.forEach(dest => {
        const destination = new Destination(dest.id, dest.name, dest.description, dest.image_url, dest.region);
        const destElement = document.createElement('div');
        destElement.className = 'destination';
        destElement.innerHTML = `
            <img src="${destination.imageUrl}" alt="${destination.name}">
            <h2>${destination.name}</h2>
            <p>${destination.description}</p>
            <button onclick="viewDetails(${destination.id})">Ver Mais</button>
        `;
        container.appendChild(destElement);
    });
}

async function viewDetails(id) {
    const response = await fetch(`/destinations/${id}`);
    const data = await response.json();
    const destination = new Destination(data.destination.id, data.destination.name, data.destination.description, data.destination.image_url, data.destination.region);
    const attractions = data.attractions.map(attr => new Attraction(attr.id, attr.destination_id, attr.name, attr.type, attr.description, attr.tips));
    
    alert(`Destino: ${destination.name}\n\nAtrações:\n${attractions.map(attr => `- ${attr.name} (${attr.type}): ${attr.description}\nDicas: ${attr.tips}`).join('\n')}`);
}

document.getElementById('search').addEventListener('input', (e) => {
    const searchTerm = e.target.value.toLowerCase();
    const destinations = document.querySelectorAll('.destination');
    destinations.forEach(dest => {
        const name = dest.querySelector('h2').textContent.toLowerCase();
        if (name.includes(searchTerm)) {
            dest.style.display = '';
        } else {
            dest.style.display = 'none';
        }
    });
});

fetchDestinations();
