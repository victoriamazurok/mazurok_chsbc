document.getElementById('infoForm').addEventListener('submit', function(e) {
        e.preventDefault();
        let name = document.getElementById('name').value.trim();
        let email = document.getElementById('email').value.trim();
        let age = parseInt(document.getElementById('age').value.trim());
        let errorMsg = '';
        let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!name) errorMsg += " Введіть ім'я.<br>";
        if (!emailPattern.test(email)) errorMsg += "Введіть коректний email.<br>";
        if (isNaN(age) || age <= 0) errorMsg += " Вік повинен бути числом більше 0.<br>";
        if (errorMsg) {
            document.getElementById('errorMsg').innerHTML = errorMsg;
        } else {
            document.getElementById('errorMsg').innerHTML = '';
            alert(" Форму подано успішно!");
        }
    });