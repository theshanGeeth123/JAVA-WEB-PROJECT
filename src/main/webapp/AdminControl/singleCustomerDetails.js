const nameInput = document.getElementById('name');
const nameStatus = document.getElementById('name-status');

nameInput.addEventListener('input', function () {
    const nameValue = this.value;

    if (nameValue.length === 0) {
        nameStatus.textContent = 'Name cannot be empty.';
        nameStatus.style.color = 'red';
    } else if (nameValue.length >= 5) {
        nameStatus.textContent = 'Valid name entered.';
        nameStatus.style.color = 'green';
    } else {
        nameStatus.textContent = 'Name must have 5 or more characters.';
        nameStatus.style.color = 'orange';
    }
});


const ageInput = document.getElementById('age');
const ageStatus = document.getElementById('age-status');

ageInput.addEventListener('input', function () {
    const ageValue = parseInt(this.value, 10);

    if (isNaN(ageValue)) {
        ageStatus.textContent = 'Age must be a number.';
        ageStatus.style.color = 'red';
    } else if (ageValue >= 18 && ageValue <= 100) {
        ageStatus.textContent = 'Valid age entered.';
        ageStatus.style.color = 'green';
    } else {
        ageStatus.textContent = 'Age must be between 18 and 100.';
        ageStatus.style.color = 'orange';
    }
});


const passwordInput = document.getElementById('password');
const passwordStatus = document.getElementById('password-status');

passwordInput.addEventListener('input', function () {
    const passwordValue = this.value;
    const hasUppercase = /[A-Z]/.test(passwordValue);
    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(passwordValue);

    if (passwordValue.length === 0) {
        passwordStatus.textContent = 'Password cannot be empty.';
        passwordStatus.style.color = 'red';
    } else if (passwordValue.length < 5) {
        passwordStatus.textContent = 'Password must be at least 5 characters long.';
        passwordStatus.style.color = 'orange';
    } else if (!hasUppercase) {
        passwordStatus.textContent = 'Password must contain at least one uppercase letter.';
        passwordStatus.style.color = 'orange';
    } else if (!hasSpecialChar) {
        passwordStatus.textContent = 'Password must contain at least one special character.';
        passwordStatus.style.color = 'orange';
    } else {
        passwordStatus.textContent = 'Valid password entered.';
        passwordStatus.style.color = 'green';
    }
});





form.addEventListener('submit', function (event) {
    let isValid = true;

    // Name validation
    const nameValue = nameInput.value;
    if (nameValue.length === 0) {
        alert('Name cannot be empty.');
        isValid = false;
    } else if (nameValue.length < 5) {
        alert('Name must have 5 or more characters.');
        isValid = false;
    }

    // Age validation
    const ageValue = parseInt(ageInput.value, 10);
    if (isNaN(ageValue)) {
        alert('Age must be a number.');
        isValid = false;
    } else if (ageValue < 18 || ageValue > 100) {
        alert('Age must be between 18 and 100.');
        isValid = false;
    }

    // Password validation
    const passwordValue = passwordInput.value;
    const hasUppercase = /[A-Z]/.test(passwordValue);
    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(passwordValue);

    if (passwordValue.length === 0) {
        alert('Password cannot be empty.');
        isValid = false;
    } else if (passwordValue.length < 5) {
        alert('Password must be at least 5 characters long.');
        isValid = false;
    } else if (!hasUppercase) {
        alert('Password must contain at least one uppercase letter.');
        isValid = false;
    } else if (!hasSpecialChar) {
        alert('Password must contain at least one special character.');
        isValid
        passwordStatus.textContent = 'Password must be at least 5 characters long.';
        passwordStatus.style.color = 'orange';
    } else if (!hasUppercase) {
        passwordStatus.textContent = 'Password must contain at least one uppercase letter.';
        passwordStatus.style.color = 'orange';
    } else if (!hasSpecialChar) {
        passwordStatus.textContent = 'Password must contain at least one special character.';
        passwordStatus.style.color = 'orange';
    } else {
        passwordStatus.textContent = 'Valid password entered.';
        passwordStatus.style.color = 'green';
    }
});

form.addEventListener('submit', function (event) {
    let isValid = true;

    // Name validation
    const nameValue = nameInput.value;
    if (nameValue.length === 0) {
        alert('Name cannot be empty.');
        isValid = false;
    } else if (nameValue.length < 5) {
        alert('Name must have 5 or more characters.');
        isValid = false;
    }

    // Age validation
    const ageValue = parseInt(ageInput.value, 10);
    if (isNaN(ageValue)) {
        alert('Age must be a number.');
        isValid = false;
    } else if (ageValue < 18 || ageValue > 100) {
        alert('Age must be between 18 and 100.');
        isValid = false;
    }

    // Password validation
    const passwordValue = passwordInput.value;
    const hasUppercase = /[A-Z]/.test(passwordValue);
    const hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(passwordValue);

    if (passwordValue.length === 0) {
        alert('Password cannot be empty.');
        isValid = false;
    } else if (passwordValue.length < 5) {
        alert('Password must be at least 5 characters long.');
        isValid = false;
    } else if (!hasUppercase) {
        alert('Password must contain at least one uppercase letter.');
        isValid = false;
    } else if (!hasSpecialChar) {
        alert('Password must contain at least one special character.');
        isValid = false;
    }

    if (!isValid) {
        event.preventDefault(); // Stop form submission
    }
});