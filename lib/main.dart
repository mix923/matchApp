
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:matchApp/Screen/AddScreen.dart';
import 'package:matchApp/Screen/LoginScreen.dart';
import 'package:matchApp/Screen/MainScreen.dart';
import 'package:matchApp/Services/AuthService.dart';
import 'package:matchApp/Switcher.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamProvider<FirebaseUser>.value(
        value: AuthService().changeUser(),
        child: Switcher(),
        )
    );
  }
}
