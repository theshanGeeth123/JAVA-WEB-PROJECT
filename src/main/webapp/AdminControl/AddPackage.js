const nameInput = document.getElementById('name');
const nameStatus = document.getElementById('name-status');

nameInput.addEventListener('input', function() {
    if (nameInput.value.trim() === '' || nameInput.value.length === 0) {
        nameStatus.textContent = 'Name cannot be empty.';
        nameStatus.style.color = 'red';
    } else if (nameInput.value.length < 5) {
        nameStatus.textContent = 'Name must be at least 5 characters long.';
        nameStatus.style.color = 'orange';
    } else {
        nameStatus.textContent = 'Name looks good!';
        nameStatus.style.color = 'green';
    }
});

const descriptionInput = document.getElementById('description');
const descriptionStatus = document.getElementById('description-status');

descriptionInput.addEventListener('input', function() {
    if (descriptionInput.value.trim() === '' || descriptionInput.value.length === 0) {
        descriptionStatus.textContent = 'Description cannot be empty.';
        descriptionStatus.style.color = 'red';
    } else if (descriptionInput.value.length < 20) {
        descriptionStatus.textContent = 'Description must be at least 20 characters long.';
        descriptionStatus.style.color = 'orange';
    } else {
        descriptionStatus.textContent = 'Description looks good!';
        descriptionStatus.style.color = 'green';
    }
});


const guestsInput = document.getElementById('noOfGuests');
const guestsStatusLabel = document.getElementById('noOfGuests-status');

guestsInput.addEventListener("input", function () {
    const numOfGuests = Number(guestsInput.value);

    if (isNaN(numOfGuests) || numOfGuests <= 0) {
        guestsStatusLabel.textContent = "Number of guests must be a non-negative number.";
        guestsStatusLabel.style.color = "red";
    } else if (numOfGuests < 10 || numOfGuests > 100) {
        guestsStatusLabel.textContent = "Number of guests must be between 10 and 100.";
        guestsStatusLabel.style.color = "orange";
    } else {
        guestsStatusLabel.textContent = "Number of guests is valid.";
        guestsStatusLabel.style.color = "green";
    }
});


const priceInput = document.getElementById('price');
const priceStatusLabel = document.getElementById('price-status');

priceInput.addEventListener("input", function () {
    const price = Number(priceInput.value);

    if (isNaN(price) || price <= 0) {
        priceStatusLabel.textContent = "Price must be a positive number.";
        priceStatusLabel.style.color = "red";
    } else if (price > 1000) {
        priceStatusLabel.textContent = "Price must be less than or equal to 1000.";
        priceStatusLabel.style.color = "orange";
    } else {
        priceStatusLabel.textContent = "Price is valid.";
        priceStatusLabel.style.color = "green";
    }
});


const form = document.getElementById('form');

form.addEventListener('submit', function(event) {
    let isValid = true;
    let errorMessages = [];

    if (nameInput.value.trim() === '' || nameInput.value.length < 5) {
        isValid = false;
        errorMessages.push('Name must be at least 5 characters long.');
    }

    if (descriptionInput.value.trim() === '' || descriptionInput.value.length < 20) {
        isValid = false;
        errorMessages.push('Description must be at least 20 characters long.');
    }

    const numOfGuests = Number(guestsInput.value);
    if (isNaN(numOfGuests) || numOfGuests <= 0 || numOfGuests < 10 || numOfGuests > 100) {
        isValid = false;
        errorMessages.push('Number of guests must be between 10 and 100.');
    }

    const price = Number(priceInput.value);
    if (isNaN(price) || price <= 0 || price > 1000) {
        isValid = false;
        errorMessages.push('Price must be a positive number and less than or equal to 1000.');
    }

    if (!isValid) {
        event.preventDefault();
        alert(errorMessages.join('\n')); 
    }
});
