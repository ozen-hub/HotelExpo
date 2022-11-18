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

    $.ajax({
        url:'http://localhost:8000/user?type=signup',
        dataType: 'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:JSON.stringify(user),
        success:function (response){
            console.log(response.code);
            if (response.code===201){
                alert(response.message);
                window.location.replace('/dashboard.jsp');
            }else{
                alert(response.message);
            }
        },
        error:(error)=>{
            console.log(error);
        }
    })
}
