import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showsSignIn = true;
  void toggleView() {
    setState(() => showsSignIn = !showsSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showsSignIn) {
      return SignIn(toggleView: toggleView);
    }else {
      return Register(toggleView: toggleView);
    }
  }
}