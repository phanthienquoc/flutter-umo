import 'package:flutter/material.dart';
import 'package:umo/constant.dart';
import 'package:umo/src/screens/Form/form.dart';
// import 'package:umo/src/screens/Login/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UMO",
      theme: ThemeData(
          primaryColor: kTextColor, primaryColorLight: kTextLighColor),
      home: const LoginFormValidation(),

      // home: const MyHomePage(title: "Umo"),
    );
  }
}
