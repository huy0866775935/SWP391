/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const dobInput = document.getElementById('dobInput');
const dobMessage = document.getElementById('dobMessage');
dobInput.addEventListener('change', () => {
    const dob = new Date(dobInput.value);
    const today = new Date();
    const age = today.getFullYear() - dob.getFullYear();
    if (age >= 16) {
        dobMessage.textContent = ''; // Clear the message
    } else {
        dobMessage.textContent = 'User must be at least 16 years old';
    }
});
const phoneInput = document.getElementById('phoneInput');
const phoneMessage = document.getElementById('phoneMessage');
phoneInput.addEventListener('input', () => {
    const phoneNumber = phoneInput.value;
    const pattern = /^[0][0-9]{9}$/;
    if (phoneNumber === '') {
        emailMessage.textContent = '';
    } else if (pattern.test(phoneNumber)) {
        phoneMessage.textContent = ''; // Clear the error message
    } else {
        phoneMessage.textContent = 'Please enter a valid phone number ';
    }
});

const emailInput = document.getElementById('emailInput');
const emailMessage = document.getElementById('emailMessage');
const emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
emailInput.addEventListener('input', () => {
    const email = emailInput.value;

    if (email === '') {
        emailMessage.textContent = ''; // Clear the error message
    } else if (emailPattern.test(email)) {
        // Here, you can add server-side validation to check if the email exists
        // For demonstration purposes, we'll assume it doesn't exist
        emailMessage.textContent = 'Email not exists!';
    } 
    else {
        emailMessage.textContent = 'Wrong format!';
    }
});

document.querySelector('form').addEventListener('submit', (event) => {
    const email = emailInput.value;
    if (!emailPattern.test(email)) {
        event.preventDefault(); // Block form submission
        alert('Something wrong, please check your input');
    }
});







