import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginFormValidation extends StatefulWidget {
  const LoginFormValidation({Key? key}) : super(key: key);

  @override
  _LoginFormValidationState createState() => _LoginFormValidationState();
}

class _LoginFormValidationState extends State<LoginFormValidation> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // String validatePassword(String value) {
  //   // TODO
  //   String pattern =
  //       r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  //   RegExp regExp = RegExp(pattern);
  //   return regExp.hasMatch(value) ? "" : "Invalid";
  // }
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Login page")),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: SizedBox(
                    width: 200,
                    height: 150,
                    child: Image.asset("/assets/images/bar_1.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      EmailValidator(errorText: "Enter valid email id"),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    hintText: "Input password",
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    MinLengthValidator(6, errorText: "errorText"),
                    MaxLengthValidator(12, errorText: "errorText")
                  ]),
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => HomePage()));
                      print("Validated");
                    } else {
                      print("Not Validated");
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.amber, fontSize: 23),
                  )),
              const SizedBox(height: 10),
              const Text("New User? Create Account")
            ],
          ),
        ),
      ),
    );
  }
}
