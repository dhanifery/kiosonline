import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:kiosonline/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String> _authUserLogin(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .login(data.name, data.password);
      } catch (err) {
        return err.toString();
      }
      return null;
    });
  }

  Future<String> _authUserSignUp(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .signup(data.name, data.password);
      } catch (err) {
        return err.toString();
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'KiosAPP',
      // logo: 'assets/images/ecorp-lightblue.png',
      onLogin: _authUserLogin,
      onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
