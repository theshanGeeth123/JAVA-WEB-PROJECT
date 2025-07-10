// Check name input field

const nameInput= document.getElementById("itemName");
const stausName = document.getElementById("name-input-status");

nameInput.addEventListener("input",function(){

    const nameValue = nameInput.value.trim();
    
    if (nameValue.length === 0) {
        stausName.textContent = "Item name cannot be empty.";
        stausName.style.color = "red";
    } else if (nameValue.length < 5) {
        stausName.textContent = "Item name must be at least 5 characters.";
        stausName.style.color = "orange";
    } else {
        stausName.textContent = "Looks good!";
        stausName.style.color = "green";
    }

});


const descriptionInput = document.getElementById("itemDescription");
const statusDescription = document.getElementById("description-input-status");

descriptionInput.addEventListener("input",function(){

    const descriptionValue = descriptionInput.value.trim();

    if (descriptionValue.length === 0) {
        statusDescription.textContent = "Item Description cannot be empty.";
        statusDescription.style.color = "red";
    } else if (descriptionValue.length < 20) {
        statusDescription.textContent = "Item Description must be at least 20 characters.";
        statusDescription.style.color = "orange";
    } else {
        statusDescription.textContent = "Looks good!";
        statusDescription.style.color = "green";
    }

});


const priceBrandInput = document.getElementById("brandName");
const statusPriceBrand = document.getElementById("brand-input-status");

priceBrandInput.addEventListener("input",function(){

    const priceBrandValue = priceBrandInput.value.trim();

    if (priceBrandValue.length === 0) {
        statusPriceBrand.textContent = "Item Price Brand cannot be empty.";
        statusPriceBrand.style.color = "red";
    } else if (priceBrandValue.length < 8) {
        statusPriceBrand.textContent = "Item Price Brand must be at least 8 characters.";
        statusPriceBrand.style.color = "orange";
    } else {
        statusPriceBrand.textContent = "Looks good!";
        statusPriceBrand.style.color = "green";
    }

});

const priceInput = document.getElementById("itemPrice");
const statusPrice = document.getElementById("price-input-status");

priceInput.addEventListener("input", function() {

    const priceValue = Number(priceInput.value.trim());

    if (priceInput.value.trim().length === 0) {
        statusPrice.textContent = "Item Price cannot be empty.";
        statusPrice.style.color = "red";
    } else if (isNaN(priceValue) || priceValue <= 0) {
        statusPrice.textContent = "Item Price must be a positive number greater than 0.";
        statusPrice.style.color = "orange";
    } else if (priceValue > 1000) {
        statusPrice.textContent = "Item Price cannot exceed 1000.";
        statusPrice.style.color = "orange";
    } else {
        statusPrice.textContent = "Looks good!";
        statusPrice.style.color = "green";
    }

});

const form = document.getElementById("itemForm");

form.addEventListener("submit", function(event) {
    const nameValue = nameInput.value.trim();
    const descriptionValue = descriptionInput.value.trim();
    const priceBrandValue = priceBrandInput.value.trim();

    let errorMessage = "";

    if (nameValue.length < 5) {
        errorMessage += "Item name must be at least 5 characters.\n";
    }

    if (descriptionValue.length < 20) {
        errorMessage += "Item description must be at least 20 characters.\n";
    }

    if (priceBrandValue.length < 8) {
        errorMessage += "Brand name must be at least 8 characters.\n";
    }

    if (errorMessage) {
        alert(errorMessage);
        event.preventDefault();
    }
});


form.addEventListener("submit", function(event) {
    const priceValue = Number(priceInput.value.trim());

    if (priceValue <= 0 || priceValue > 1000) {
        alert("Item price must be a positive number between 0 and 1000.");
        event.preventDefault();
    }
});



