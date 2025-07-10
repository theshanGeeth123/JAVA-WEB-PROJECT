

// Show selected file name

document.querySelector('input[type="file"]').addEventListener('change', function (e) {
    const fileName = e.target.files[0] ? e.target.files[0].name : 'No file chosen';
    document.querySelector('.file-name').textContent = fileName;
});




// Check name input field

const itemNameInput = document.getElementById("itemName");
const statusLabel = document.getElementById("statusLabel");

itemNameInput.addEventListener("input", function () {
    const value = itemNameInput.value.trim();

    if (value.length === 0) {
        statusLabel.textContent = "Item name cannot be empty.";
        statusLabel.style.color = "red";
    } else if (value.length < 5) {
        statusLabel.textContent = "Item name must be at least 5 characters.";
        statusLabel.style.color = "orange";
    } else {
        statusLabel.textContent = "Looks good!";
        statusLabel.style.color = "green";
    }
});


// Check Description input field

const itemDescriptionInput = document.getElementById("itemDescription");
const statusLabelDescription  = document.getElementById("statusLabel-description");

itemDescriptionInput.addEventListener("input",function(){

    const value = itemDescriptionInput.value.trim();

    if (value.length === 0) {
        statusLabelDescription.textContent = "Item Description cannot be empty.";
        statusLabelDescription.style.color = "red";
    } else if (value.length < 20) {
        statusLabelDescription.textContent = "Item Description must be at least 20 characters.";
        statusLabelDescription.style.color = "orange";
    } else {
        statusLabelDescription.textContent = "Looks good!";
        statusLabelDescription.style.color = "green";
    }

});



// Check BrandName input field


const itemBrandNameInput = document.getElementById("itemBrand");
const statusLabelBrandName = document.getElementById("brandNameLabel-status");

itemBrandNameInput.addEventListener("input",function(){

    const value = itemBrandNameInput.value.trim();

    if (value.length === 0) {
        statusLabelBrandName.textContent = "Item Brand Name cannot be empty.";
        statusLabelBrandName.style.color = "red";
    } else if (value.length < 8) {
        statusLabelBrandName.textContent = "Item Brand Name must be at least 8 characters.";
        statusLabelBrandName.style.color = "orange";
    } else {
        statusLabelBrandName.textContent = "Looks good!";
        statusLabelBrandName.style.color = "green";
    }

});

// Check Price input field

const itemPriceInput = document.getElementById("price-input");
const statusLabelPrice = document.getElementById("price-status");

itemPriceInput.addEventListener("input",function(){

    const valuePrice = Number(itemPriceInput.value);

    if(valuePrice === 0){
        statusLabelPrice.textContent = "Item Price cannot be 0 or empty";
        statusLabelPrice.style.color = "red";
    }else if(valuePrice> 0 && valuePrice <= 1000){
        statusLabelPrice.textContent = "Price in Valid range";
        statusLabelPrice.style.color = "green";   
    }else{
        statusLabelPrice.textContent = "Item Price cannot be exceed 1000";
        statusLabelPrice.style.color = "red";  
    }

});

// Check text inputfields before submission

document.querySelector(".item-form").addEventListener("submit", function (event) {
   
    const statusTexts = [
        statusLabel.textContent.trim(),               
        statusLabelDescription.textContent.trim(),    
        statusLabelBrandName.textContent.trim(),     
    ];

    const allGood = statusTexts.every(text => text === "Looks good!");

    if (!allGood) {
        event.preventDefault(); 
        alert("Please correct all the fields before submitting.");
    }
});


document.querySelector('.image-input').addEventListener('change', function (e) {
    const file = e.target.files[0];
    const fileNameElement = document.querySelector('.file-name');
    const maxSize = 2 * 1024 * 1024; // Limited for 2Mb

    if (file) {
        if (file.size > maxSize) {
            alert("File size should be less than 2MB.");
            e.target.value = '';
            fileNameElement.textContent = 'No file chosen';
        } else {
            fileNameElement.textContent = file.name;
            fileNameElement.style.color = "green"; 
        }
    } else {
        fileNameElement.textContent = 'No file chosen';
    }
});



