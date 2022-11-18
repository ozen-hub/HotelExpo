function navigateToSignup() {
    window.location.replace('/signup.jsp');
}

function login() {
    let user={
        email:$('#email').val(),
        password:$('#password').val()
    }
    $.ajax({
        url:'http://localhost:8000/user?type=login',
        dataType: 'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:JSON.stringify(user),
        success:function (response){
            console.log(response.code);
            if (response.code===200){
                alert(response.message);
            }else{
                alert(response.message);
            }
        },
        error:(error)=>{
            console.log(error);
        }
    })

}