document.querySelector('.toggle-password').addEventListener('click', function() {
    const passwordInput = document.querySelector('#password');
    const icon = this.querySelector('i');
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        icon.classList.replace('fa-eye', 'fa-eye-slash');
    } else {
        passwordInput.type = 'password';
        icon.classList.replace('fa-eye-slash', 'fa-eye');
    }
});


// Validate Name

const nameInput = document.getElementById('name');
const nameStatus = document.getElementById('name-status');

nameInput.addEventListener('input', function() {
    if (this.value.trim().length === 0) {
        nameStatus.textContent = 'Name cannot be empty';
        nameStatus.style.color = 'red';
    } else if (this.value.trim().length < 5) {
        nameStatus.textContent = 'Name must be at least 5 characters long';
        nameStatus.style.color = 'orange';
    } else {
        nameStatus.textContent = 'Name is valid';
        nameStatus.style.color = 'green';
    }
});

// Validate Age

const ageInput = document.getElementById('age');
const ageStatus = document.getElementById('age-status');

ageInput.addEventListener('input', function() {

    const age = parseInt(this.value, 10);
    if (age < 18) {
        ageStatus.textContent = 'Age must be at least 18';
        ageStatus.style.color = 'orange';
    } else if (age > 100) {
        ageStatus.textContent = 'Age must not exceed 100';
        ageStatus.style.color = 'orange';
    } else {
        ageStatus.textContent = 'Age is valid';
        ageStatus.style.color = 'green';

    }
});

// Validate Password

const passwordInput = document.getElementById('password');
const passwordStatus = document.getElementById('password-status');

passwordInput.addEventListener('input', function() {

    const password = this.value.trim();
    
    if (password.length === 0) {
        passwordStatus.textContent = 'Password cannot be empty';
        passwordStatus.style.color = 'red';
    } else if (!/[A-Z]/.test(password)) {
        passwordStatus.textContent = 'Password must contain at least one uppercase letter';
        passwordStatus.style.color = 'orange';
    } else if (!/[!@#$%^&*(),.?":{}|<>]/.test(password)) {
        passwordStatus.textContent = 'Password must contain at least one special character';
        passwordStatus.style.color = 'orange';
    } else {
        passwordStatus.textContent = 'Password is valid';
        passwordStatus.style.color = 'green';
    }

});


// Alert for Each Violation


document.getElementById('form').addEventListener('submit', function(event) {
    let alertMessage = '';

    // Check Name
    if (nameInput.value.trim().length === 0) {
        alertMessage += 'Name cannot be empty.\n';
    } else if (nameInput.value.trim().length < 5) {
        alertMessage += 'Name must be at least 5 characters long.\n';
    }

    // Check Age
    const age = parseInt(ageInput.value, 10);
    if (isNaN(age) || age < 18) {
        alertMessage += 'Age must be at least 18.\n';
    } else if (age > 100) {
        alertMessage += 'Age must not exceed 100.\n';
    }

    // Check Password
    const password = passwordInput.value.trim();
    if (password.length === 0) {
        alertMessage += 'Password cannot be empty.\n';
    } else if (!/[A-Z]/.test(password)) {
        alertMessage += 'Password must contain at least one uppercase letter.\n';
    } else if (!/[!@#$%^&*(),.?":{}|<>]/.test(password)) {
        alertMessage += 'Password must contain at least one special character.\n';
    }

    // If there are violations, prevent form submission and show alert
    if (alertMessage) {
        event.preventDefault();
        alert(alertMessage);
    }
});



