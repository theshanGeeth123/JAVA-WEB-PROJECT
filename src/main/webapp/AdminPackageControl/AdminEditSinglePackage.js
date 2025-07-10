// Check Name Input field

const nameInput = document.getElementById("name");
const nameStatusLabel = document.getElementById("nameStatus-label");

nameInput.addEventListener("input", function () {

    const nameValue = nameInput.value;

    if (!nameValue || nameValue.trim() === "") {

        nameStatusLabel.textContent = "Name cannot be empty.";
        nameStatusLabel.style.color = "red";

    } else if (nameValue.length < 5) {

        nameStatusLabel.textContent = "Name must be at least 5 characters long.";
        nameStatusLabel.style.color = "orange";

    } else {

        nameStatusLabel.textContent = "Name is valid.";
        nameStatusLabel.style.color = "green";

    }

});

// Check Description Input field

const descriptionInput = document.getElementById("description");
const descriptionStatusLabel = document.getElementById("descriptionStatus-label");

descriptionInput.addEventListener("input", function () {

    const descriptionValue = descriptionInput.value;

    if (!descriptionValue || descriptionValue.trim() === "") {

        descriptionStatusLabel.textContent = "Description cannot be empty.";
        descriptionStatusLabel.style.color = "red";

    } else if (descriptionValue.length < 20) {

        descriptionStatusLabel.textContent = "Description must be at least 20 characters long.";
        descriptionStatusLabel.style.color = "orange";

    } else {

        descriptionStatusLabel.textContent = "Description is valid.";
        descriptionStatusLabel.style.color = "green";

    }

});


// Check Number of Guests Input field


const guestsInput = document.getElementById('guests');
const guestsStatusLabel = document.getElementById('guestsStatus-label');

guestsInput.addEventListener("input", function () {
    const value = Number(guestsInput.value);

    if (isNaN(value) || value < 0) {
        guestsStatusLabel.textContent = "Number of guests must be a non-negative number.";
        guestsStatusLabel.style.color = "red";
    } else if (value < 10 || value > 100) {
        guestsStatusLabel.textContent = "Number of guests must be between 10 and 100.";
        guestsStatusLabel.style.color = "orange";
    } else {
        guestsStatusLabel.textContent = "Number of guests is valid.";
        guestsStatusLabel.style.color = "green";
    }
});



// Check Price Input field

const priceInput = document.getElementById("price");
const priceStatusLabel = document.getElementById("pricesStatus-label");

priceInput.addEventListener("input", function () {

    const value = Number(priceInput.value);

    if (isNaN(value) || value <= 0) {
        priceStatusLabel.textContent = "Price must be a positive number.";
        priceStatusLabel.style.color = "red";
    } else if (value > 1000) {
        priceStatusLabel.textContent = "Price must be less than or equal to 1000.";
        priceStatusLabel.style.color = "orange";
    } else {
        priceStatusLabel.textContent = "Price is valid.";
        priceStatusLabel.style.color = "green";
    }

});


// Alert on Submit
document.getElementById("form").addEventListener("submit", function (event) {
    let alertMessage = "";
    let isValid = true;

    // Check Name
    const nameValue = nameInput.value;
    if (!nameValue || nameValue.trim() === "") {
        alertMessage += "Name cannot be empty.\n";
        isValid = false;
    } else if (nameValue.length < 5) {
        alertMessage += "Name must be at least 5 characters long.\n";
        isValid = false;
    }

    // Check Description
    const descriptionValue = descriptionInput.value;
    if (!descriptionValue || descriptionValue.trim() === "") {
        alertMessage += "Description cannot be empty.\n";
        isValid = false;
    } else if (descriptionValue.length < 20) {
        alertMessage += "Description must be at least 20 characters long.\n";
        isValid = false;
    }

    // Check Number of Guests
    const guestsValue = Number(guestsInput.value);
    if (isNaN(guestsValue) || guestsValue < 0) {
        alertMessage += "Number of guests must be a non-negative number.\n";
        isValid = false;
    } else if (guestsValue < 10 || guestsValue > 100) {
        alertMessage += "Number of guests must be between 10 and 100.\n";
        isValid = false;
    }

    // Check Price
    const priceValue = Number(priceInput.value);
    if (isNaN(priceValue) || priceValue <= 0) {
        alertMessage += "Price must be a positive number.\n";
        isValid = false;
    } else if (priceValue > 1000) {
        alertMessage += "Price must be less than or equal to 1000.\n";
        isValid = false;
    }

    // Show Alerts and Stop Submission if Invalid
    if (!isValid) {
        event.preventDefault();
        alert(alertMessage);
    }
});