import 'package:application/login.dart';
import 'package:application/signup.dart';

bool signUp = false;
bool login = false;
List userinfo = [
  {'email': 'x@gmail.com', 'password': '1234'},
  {'email': 'y@gmail.com', 'password': '1235'},
  {'email': 'z@gmail.com', 'password': '1236'}
];
loginfun() {
  for (var i = 0; i < userinfo.length; i++) {
    if (emailController.text == userinfo[i]['email'] &&
        passwordController.text == userinfo[i]['password']) {
      login = true;
      return;
    }
  }
}

signupfun() {
  var password = SignUpPasswordController.text;
  var confirm = ConfirmpasswordController.text;
  if (password != confirm) {
    return;
  } else if (SignUpPasswordController.text == ConfirmpasswordController.text) {
    for (var i = 0; i < userinfo.length; i++) {
      if (SignUpEmailController.text == userinfo[i]['email']) {
        signUp = false;
        return;
      }
    }
  }
  return signUp = true;
}
