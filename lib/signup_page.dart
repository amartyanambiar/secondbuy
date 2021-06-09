import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:secondbuy/login_page.dart';
import 'package:secondbuy/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text("SignUp"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildLoginText(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginText(Size size) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text("Already Have an account? "),
        InkWell(
          child: Text(
            "Login.",
            style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, 'secondbuy/Login');
          },
        )
      ]),
    );
  }
}
