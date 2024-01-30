<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AU Travels - Sign Up</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    header {
        background: #333;
        color: white;
        padding: 20px;
        text-align: center;
    }

    header h1 {
        margin: 0;
    }

    .container {
        width: 80%;
        margin: auto;
        overflow: hidden;
    }

    form {
        background: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        margin: 20px auto 50px; /* Adjust the bottom margin as needed */
        position: relative;
    }

    form label {
        display: block;
        margin-bottom: 8px;
        font-size: 16px;
        color: #333;
    }

    form input[type="text"],
    form input[type="password"],
    form input[type="email"],
    form input[type="date"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 15px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .password-container {
        margin-bottom: 15px;
    }

    .password-toggle {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        cursor: pointer;
        margin-top: -15px; /* Adjust this value as needed */
    }

    .password-toggle:hover {
        color: #3498db;
    }

    form input[type="submit"] {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        color: white;
        background: #3498db;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
    }
</style>
<script>
function togglePassword(fieldId, toggleId) {
    var passwordField = document.getElementById(fieldId);
    var toggleIcon = document.getElementById(toggleId);

    if (passwordField.type === "password") {
        passwordField.type = "text";
        toggleIcon.innerHTML = "Hide";
    } else {
        passwordField.type = "password";
        toggleIcon.innerHTML = "Show";
    }
}

function validatePassword() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var email = document.getElementById("email").value;
    var dob = document.getElementById("dob").value;
    var errorContainer = document.getElementById("error-container");

    // Reset error messages
    errorContainer.innerHTML = "";

    if (username.trim() === "") {
        displayErrorMessage("Please enter a username.", errorContainer);
        return false;
    }

    if (username.length < 5) {
        displayErrorMessage("Username must have at least 5 characters.", errorContainer);
        return false;
    }

    if (password === "") {
        displayErrorMessage("Please enter a password.", errorContainer);
        return false;
    }

    if (confirmPassword === "") {
        displayErrorMessage("Please confirm your password.", errorContainer);
        return false;
    }

    if (password !== confirmPassword) {
        displayErrorMessage("Passwords do not match. Please enter matching passwords.", errorContainer);
        return false;
    }

    if (email.trim() === "") {
        displayErrorMessage("Please enter an email address.", errorContainer);
        return false;
    }

    // Basic email validation
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        displayErrorMessage("Please enter a valid email address.", errorContainer);
        return false;
    }

    if (dob === "") {
        displayErrorMessage("Please enter your date of birth.", errorContainer);
        return false;
    }

    // If the validations pass, you can proceed with form submission or further processing.
    return true;
}

function displayErrorMessage(message, container) {
    var errorMessage = document.createElement("div");
    errorMessage.className = "error-message";
    errorMessage.textContent = message;
    container.appendChild(errorMessage);
}
</script>
</head>
<body>

    <header>
        <div class="container">
            <h1>SignUp To AU Travels</h1>
        </div>
    </header>

    <div class="container">
        <form onsubmit="return validatePassword();" action="create-user" method="post">
            <div id="error-container"></div>
            <label for="username">Username:</label> <input type="text" id="username" name="username" required>
            <div class="password-container">
                <label for="password">Password:</label> <input type="password" id="password" name="password" required> <span
                    class="password-toggle" id="togglePassword"
                    onclick="togglePassword('password', 'togglePassword')">Show</span>
            </div>
            <div class="password-container">
                <label for="confirmPassword">Confirm Password:</label> <input
                    type="password" id="confirmPassword" name="confirmPassword"
                    required> <span class="password-toggle" id="toggleconfirmPassword"
                    onclick="togglePassword('confirmPassword', 'toggleconfirmPassword')">Show</span>
            </div>
            <label for="email">Email:</label> <input type="email" id="email" name="email" required>
            <label for="dob">Date of Birth:</label> <input type="date" id="dob" name="dob" required> <input type="submit" value="Sign Up">
        </form>
    </div>

</body>
</html>
