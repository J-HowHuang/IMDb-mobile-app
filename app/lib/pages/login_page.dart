import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Function onClickLogin(String email, String passwd) {
    print({
      'Email': email,
      'Password': passwd,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.only(top: 60),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              height: 50,
            ),
            SizedBox(
              height: 30,
            ),
            LoginForm(onClickLogin),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  final Function onClickLogin;
  LoginForm(this.onClickLogin);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwdController = TextEditingController();
  final passwdNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              autofocus: true,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (_) =>
                  FocusScope.of(context).requestFocus(passwdNode),
              decoration: InputDecoration(
                fillColor: Theme.of(context).backgroundColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                hintText: '電子郵件',
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              obscureText: true,
              controller: passwdController,
              keyboardType: TextInputType.visiblePassword,
              focusNode: passwdNode,
              onFieldSubmitted: (_) => widget.onClickLogin(emailController.text, passwdController.text),
              decoration: InputDecoration(
                fillColor: Theme.of(context).backgroundColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                hintText: '密碼',
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: 40,
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              textColor: Color(0xfffafafa),
              color: Theme.of(context).accentColor,
              onPressed: () => widget.onClickLogin(emailController.text, passwdController.text),
              child: Text('登入', style: TextStyle(fontSize: 20),),
            ),
          ),
        ],
      ),
    );
  }
}
