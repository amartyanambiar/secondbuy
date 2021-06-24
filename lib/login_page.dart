import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:secondbuy/signup_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String username;
  late String password;

  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text("Login"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildLogo(size),
              buildInputField(
                "Username",
                true,
              ),
              buildInputField("Password", passwordVisibility, bottom: 5.0),
              buildForgotPassword(),
              buildLoginButton(size),
              buildSignUpText(size),
            ],
          ),
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

  Widget buildInputField(String fieldName, bool visible, {bottom = 20.0}) {
    return Container(
//      padding: EdgeInsets.only(left: 20, right: 15),
      child: TextField(
        cursorColor: Colors.blue,
        obscureText: !visible,
        onChanged: (text) {
          setState(() {
            if (visible)
              this.username = text;
            else
              this.password = text;
          });
        },
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          labelText: fieldName,
          hintText: fieldName,
          hintStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          suffixIcon: fieldName == 'Password' ? buildEye(visible) : null,
        ),
      ),
      margin: EdgeInsets.fromLTRB(25, 0, 25, bottom),
    );
  }

  Widget buildLoginButton(Size size) {
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
          Navigator.pushNamed(context, 'secondbuy/home');
        },
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  Widget buildSignUpText(Size size) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Don't Have an account yet, "),
          InkWell(
            child: Text(
              "SignUp Now",
              softWrap: true,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'secondbuy/SignUp');
            },
          )
        ],
      ),
    );
  }

  Widget buildEye(bool visible) {
    return IconButton(
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
        onPressed: () {
          setState(() {
            passwordVisibility = !passwordVisibility;
          });
        });
  }

  Widget buildForgotPassword() {
    return Container(
      margin: EdgeInsets.only(left: 45),
      child: Align(
          child: InkWell(
            child: Text(
              "Forgot Password?!",
              style: TextStyle(
                color: Color(0xfaaaacaa),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => forgotPassword(),
          ),
          alignment: Alignment.centerLeft),
    );
  }

  forgotPassword() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        content: new Text('Just tap on Login.'),
      ),
    );
  }
}
