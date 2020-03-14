import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:hishabmama/screen/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreeen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Login',
      onLogin: (_) => Future(null),
      onSignup: (_) => Future(null),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName);
      },
      onRecoverPassword: (_) => Future(null),
    );
  }
}
