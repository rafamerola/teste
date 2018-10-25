
<?php
    $con = mysqli_connect("localhost","root","","sose-bd") or die("connection error");
    $email = $_POST['email'];
    $password = $_POST['password'];
    if(isset($_POST['register']))
    {   
        $register = mysqli_num_rows(mysqli_query($con, "SELECT * FROM `sose_usr` WHERE `usr_email`='$email'"));
        if($register == 0)
        {
            $insert = mysqli_query($con,"INSERT INTO `sose_usr` (`usr_nome`,`usr_nascimento`,`usr_cpf`,`usr_cep`,`usr_endereco`,`usr_estado`,`usr_cidade`,`usr_telefone`,`usr_email`,`usr_senha`) VALUES ('$nome','$nascimento','$cpf','$cep','$endereco','$estado','$cidade','$telefone','$email','$senha')");
            if($insert)
                echo "success";
            else
                echo "error";
        }
        else if($register != 0)
            echo "exist";
    }
    else if(isset($_POST['login']))
    {
        $login = mysqli_num_rows(mysqli_query($con, "SELECT * FROM `sose_usr` WHERE `usr_email`='$email' AND `usr_senha`='$password'"));
        if($login != 0)
            echo "success";
        else
            echo "error";
    }
    mysqli_close($con);
?>
