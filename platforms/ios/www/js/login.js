 $("#login").click(function(){
	 var url="http://localhost:8080/includes/auth.php";
    var email= $.trim($("#email").val());
    var password= $.trim($("#password").val());
    $("#status").text("Authenticating...");
    var loginString ="email="+email+"&password="+password+"&login=";
    $.ajax({
        type: "POST",crossDomain: true, cache: false,
        url: url,
        data: loginString,
        success: function(data){
            if(data == "success") {
                $("#status").text("Login Success..!");
                localStorage.loginstatus = "true";
                window.location.href = "./logado.html";
            }
            else if(data == "error")
            {
                $("#status").text("Login Failed..!");
            }
        }
    });
});