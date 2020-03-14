import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:matchApp/Screen/LoginScreen.dart';
import 'package:matchApp/Screen/MainScreen.dart';
import 'package:matchApp/Services/AuthService.dart';
import 'package:provider/provider.dart';

class Switcher extends StatefulWidget {
  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  @override
  Widget build(BuildContext context) {

    final FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    
    return firebaseUser == null ? LoginScreen() : MainScreen();


  }
}