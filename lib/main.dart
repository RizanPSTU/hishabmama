import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hishabmama/screen/loginScreen.dart';
import 'package:hishabmama/screen/registerScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HishabMama',
      initialRoute: '/',
      routes: {
        //'/': (context) => LoginScreen(),
        //RegisterScreen.routeName: (context) => RegisterScreen(),
        '/': (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
    );
  }
}
