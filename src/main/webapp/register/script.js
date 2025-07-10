
// For selection box for age.

const ageSelectionContainer = document.querySelector(".select-age");

const numbers = Array.from({ length: 100 }, (_, i) => i + 1);


// numbers.forEach(number => {
//     console.log(number);
// });

var ageSelectors = '<option value="" disabled selected>Select your age</option>';

numbers.forEach((number)=>{

    ageSelectors += `<option>${number}</option>`;


});

ageSelectionContainer.innerHTML = ageSelectors;


// Checkbox 

// Get the checkbox element
let checkbox = document.querySelector('.checkbox-container input');

let submitBtn = document.querySelector('.signup-button'); 


checkbox.addEventListener('click',()=>{

    if (checkbox.checked) {
        submitBtn.disabled = false;
    } else {
        
        submitBtn.disabled = true;
    }

});





// Email input status
const emailInput = document.querySelector('input[name="email"]');
const emailStatus = document.getElementById('email-status');

emailInput.addEventListener('input', () => {
    if (emailInput.value.trim() === '') {
        emailStatus.textContent = 'Email is required.';
        emailStatus.style.color = 'red';
    } else if (!/\S+@\S+\.\S+/.test(emailInput.value)) {
        emailStatus.textContent = 'Invalid email format.';
        emailStatus.style.color = 'red';
    } else if (emailInput.value.length < 15) {
        emailStatus.textContent = 'Email must be at least 15 characters.';
        emailStatus.style.color = 'red';
    } else {
        emailStatus.textContent = 'Valid email.';
        emailStatus.style.color = 'green';
    }
});

// Name input status
const nameInput = document.querySelector('input[name="name"]');
const nameStatus = document.getElementById('name-status');

nameInput.addEventListener('input', () => {
    if (nameInput.value.trim() === '') {
        nameStatus.textContent = 'Name is required.';
        nameStatus.style.color = 'red';
    } else if (nameInput.value.trim().length < 5) {
        nameStatus.textContent = 'Name must be at least 5 characters.';
        nameStatus.style.color = 'red';
    } else {
        nameStatus.textContent = 'Valid name.';
        nameStatus.style.color = 'green';
    }
});

// Age selection status
const ageSelect = document.querySelector('.select-age');
const ageStatus = document.getElementById('age-status');

ageSelect.addEventListener('change', () => {
    if (ageSelect.value === '') {
        ageStatus.textContent = 'Age is required.';
        ageStatus.style.color = 'red';
    } else if (parseInt(ageSelect.value) < 18) {
        ageStatus.textContent = 'You must be 18 or older.';
        ageStatus.style.color = 'red';
    } else {
        ageStatus.textContent = 'Age selected.';
        ageStatus.style.color = 'green';
    }
});


// Gender selection status
const genderSelect = document.querySelector('.select-gender');
const genderStatus = document.getElementById('gender-status');

genderSelect.addEventListener('change', () => {
    if (genderSelect.value === '') {
        genderStatus.textContent = 'Gender is required.';
        genderStatus.style.color = 'red';
    } else {
        genderStatus.textContent = 'Gender selected.';
        genderStatus.style.color = 'green';
    }
});

// Password input status
const passwordInput = document.querySelector('input[name="password"]');
const passwordStatus = document.getElementById('password-status');

passwordInput.addEventListener('input', () => {
    const password = passwordInput.value.trim();
    const hasUpperCase = /[A-Z]/.test(password);
    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);

    if (password === '') {
        passwordStatus.textContent = 'Password is required.';
        passwordStatus.style.color = 'red';
    } else if (password.length < 6) {
        passwordStatus.textContent = 'Password must be at least 6 characters.';
        passwordStatus.style.color = 'red';
    } else if (!hasUpperCase) {
        passwordStatus.textContent = 'Password must include at least one uppercase letter.';
        passwordStatus.style.color = 'red';
    } else if (!hasSpecialChar) {
        passwordStatus.textContent = 'Password must include at least one special character.';
        passwordStatus.style.color = 'red';
    } else {
        passwordStatus.textContent = 'Valid password.';
        passwordStatus.style.color = 'green';
    }
});




// Form submission restriction
const form = document.querySelector('form');

form.addEventListener('submit', (event) => {
    let isValid = true;
    let alertMessage = '';

    // Check email validation
    if (emailInput.value.trim() === '') {
        isValid = false;
        alertMessage += 'Email is required.\n';
    } else if (!/\S+@\S+\.\S+/.test(emailInput.value)) {
        isValid = false;
        alertMessage += 'Invalid email format.\n';
    } else if (emailInput.value.length < 15) {
        isValid = false;
        alertMessage += 'Email must be at least 15 characters.\n';
    }

    // Check name validation
    if (nameInput.value.trim() === '') {
        isValid = false;
        alertMessage += 'Name is required.\n';
    } else if (nameInput.value.trim().length < 5) {
        isValid = false;
        alertMessage += 'Name must be at least 5 characters.\n';
    }

    // Check age validation
    if (ageSelect.value === '') {
        isValid = false;
        alertMessage += 'Age is required.\n';
    }

    // Check gender validation
    if (genderSelect.value === '') {
        isValid = false;
        alertMessage += 'Gender is required.\n';
    }

     // Check password validation
    const password = passwordInput.value.trim();
    const hasUpperCase = /[A-Z]/.test(password);
    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);

    if (password === '') {
        isValid = false;
        alertMessage += 'Password is required.\n';
    } else if (password.length < 6) {
        isValid = false;
        alertMessage += 'Password must be at least 6 characters.\n';
    } else if (!hasUpperCase) {
        isValid = false;
        alertMessage += 'Password must include at least one uppercase letter.\n';
    } else if (!hasSpecialChar) {
        isValid = false;
        alertMessage += 'Password must include at least one special character.\n';
    }

});
