function validatePassword() {
    var pw = document.getElementById("pw").value;
    var cpw = document.getElementById("cpw").value;

    if (pw !== cpw) {
        alert("Please recheck your password!");
        return false; 
    }
    return true; 
}

let firstName = "John";  // Value from the database
let lastName = "Doe";    // Value from the database
let fullName = firstName + " " + lastName;

document.getElementById("profileName").innerText = fullName;