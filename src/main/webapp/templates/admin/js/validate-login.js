 document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('.needs-validation');
    
    form.addEventListener('submit', function (event) {
        
        event.stopPropagation();
        
        const username = document.getElementById('yourUsername').value.trim();
        const password = document.getElementById('yourPassword').value;
        
        // Username validation
        if (username === '') {
            alert('Vui lòng nhập tên đăng nhập!');
            form.classList.add('was-validated');
            return;
        }

         if (password === '') {
            alert('Vui lòng nhập tên đăng nhập!');
            form.classList.add('was-validated');
            return;
        }
        
        // Password validation
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;
        if (!passwordRegex.test(password)) {
            alert('Mật khẩu phải dài ít nhất 8 ký tự, chứa chữ hoa, chữ thường, số và ký tự đặc biệt (!@#$%^&*)!');
            form.classList.add('was-validated');
            return;
        }
        
       
    });
});
