import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String username;
  late String password;
  late String email;
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
              buildLogo(size),
              buildInputField("Username", true),
              buildInputField("E-mail ID", true),
              buildInputField("Password", false),
              buildSignupButton(size),
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
            "Login",
            style: TextStyle(
              color: Colors.black,
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

  Widget buildSignupButton(Size size) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(size.width / 8, 15, size.width / 8, 15),
          primary: Colors.green,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, 'secondbuy/Login');
        },
        child: Text(
          "Sign-Up",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  Widget buildLogo(Size size) {
    return Container(
      child: Image.asset(
        "assets/images/shopping-35594_1280.png",
        height: size.height / 6,
        width: size.width / 2,
      ),
      margin: EdgeInsets.only(top: 0, bottom: 30),
    );
  }

  Widget buildInputField(String fieldName, bool visible) {
    return Container(
      child: TextField(
        obscureText: !visible,
        onChanged: (text) {
          setState(() {
            if (fieldName == "Username")
              this.username = text;
            else if (fieldName == "Password")
              this.password = text;
            else
              this.email = text;
          });
        },
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          labelText: fieldName,
          hintText: fieldName,
          hintStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
    );
  }
}
