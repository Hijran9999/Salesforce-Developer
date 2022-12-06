public class loginform{
    public static string loginFormMethod(String username,Integer password){
String loginMessgae = '';

loginMessage = 'You logged in successfully';

    }
    else if(username='engin44' && password !=1234){
        loginMessage = 'You entered a wrong password';
    }
    else if(username !='engin44' && password ==1234){
        loginMessage = 'You entered  a wrong passsword';
    } else{
        loginMessgae = 'Your both username and password are incorrect';
    }
    return loginMessage;
    }
}