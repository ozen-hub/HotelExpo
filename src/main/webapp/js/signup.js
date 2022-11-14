function navigateToLogin() {
    window.location.replace('/login.jsp');
}
function signup() {
   let user={
       email:$('#email').val(),
       fName:$('#f_name').val(),
       lName:$('#l_name').val(),
       contact:$('#contact').val(),
       password:$('#password').val()
   }
    console.log(user);
}
