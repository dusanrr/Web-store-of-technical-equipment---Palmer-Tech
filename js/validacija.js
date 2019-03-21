function formValidation()  
{  
var name = document.registration.fnm;
var username = document.registration.unm; 
var pwd = document.registration.pwd;  
var cpwd = document.registration.cpwd; 
var email = document.registration.email;  
var city = document.registration.city; 
var contact = document.registration.contact;  
var gender = document.registration.gender; 
/*if(userid_validation(uid,5,12))  
{ */ 
if(aphabet(name))
{
if(pass_validation(pwd,7,12))  
{ 
if(cpass_validation(cpwd,7,12))  
{   
if(allLetter(username))  
{  
if(alphanumeric(uadd))  
{   
if(genderselect(gender))  
{  
if(allnumeric(contact))  
{  
if(ValidateEmail(email))  
{  
if(aphabet(city))	
}  
}   
}  
}   
}  
}  
}  
}  
}
return false;  
  
} 

function pass_validation(pwd,mx,my)  
{  
var pwd_len = pwd.value.length;  
if (pwd_len == 0 ||pwd_len >= my || pwd_len < mx)  
{  
alert("Obavezno polje / duzina passworda mora biti izmedju "+mx+" i "+my);  
pwd.focus();  
return false;  
}  
return true;  
}
function cpass_validation(cpwd,mx,my)  
{  
var cpwd_len = cpwd.value.length;  
if (cpwd_len == 0 ||cpwd_len >= my || cpwd_len < mx)  
{  
alert("Obavezno polje / duzina passworda mora biti izmedju "+mx+" i "+my);  
cpwd.focus();  
return false;  
}  
return true;  
}
function checkPasswordMatch() {
    var password = $("#pwd").val();
    var confirmPassword = $("#cpwd").val();

    if (password != confirmPassword)
        alert("Passwords do not match!");
    else
        alert("Passwords match.");
}    
function allLetter(username)  
{   
var letters = /^[A-Za-z]+$/;  
if(username.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('Username must have alphabet characters only');  
username.focus();  
return false;  
}  
}  

function aphabet(name){
	var letters = /^[a-zA-Z\s]+$/;
	if(name.value.match(letters))
	{
		return true;
	}
	else
	{
		alert("Please Enter only alphabets in text");
		name.focus();
		return false;
	}
}
function alphanumeric(uadd)  
{   
var letters = /^[0-9a-zA-Z]+$/;  
if(uadd.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('User address must have alphanumeric characters only');  
uadd.focus();  
return false;  
}  
} 

 
function genderselect(gender)  
{  
if(gender.value == "Default")  
{  
alert('Izaberite gender.');  
gender.focus();  
return false;  
}  
else  
{  
return true;  
}  
}  
function allnumeric(contact)  
{   
var numbers = /^[0-9]+$/;  
if(contact.value.match(numbers))  
{  
return true;  
}  
else  
{  
alert('contact code must have numeric characters only');  
contact.focus();  
return false;  
} 
}
function ValidateEmail(email)  
{  
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(email.value.match(mailformat))  
{  
return true;  
}  
else  
{  
alert("You have entered an invalid email address!");  
email.focus();  
return false;  
}  
} 
