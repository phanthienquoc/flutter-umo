import 'package:flutter/material.dart';
import 'package:umo/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = const TextStyle(fontFamily: 'Fira Code', fontSize: 20.0);

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    void _login() {}

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: kTextLighColor,
      child: MaterialButton(
        onPressed: _login,
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text(
          "Login",
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const SizedBox(height: 45),
            emailField,
            const SizedBox(height: 45),
            passwordField,
            const SizedBox(height: 45),
            loginButton,
            const Text('You have pushed the button this many times:'),
            Text('$_counter'),
          ])),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: "increment",
          child: const Icon(Icons.add)),
    );
  }
}
