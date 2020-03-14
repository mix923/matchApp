import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:matchApp/Services/AuthService.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String appBartext = "Login";
  String buttonSubmittext = "Login";
  Icon appBaricon = Icon(Ionicons.ios_add);

  String email="";
  String password="";

  final _formKey = GlobalKey<FormState>();

  void changeForm() {
    if (appBartext == "Login") {
      appBartext = "Register";
      buttonSubmittext = "Register";
      appBaricon = Icon(FontAwesome.user);
    } else {
      appBartext = "Login";
      buttonSubmittext = "Login";
      appBaricon = Icon(FontAwesome.plus_circle);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: appBaricon,
            onPressed: () {
              setState(() => changeForm());
            },
          ),
        ],
        title: Text(appBartext),
      ),
      body: ListView(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.album,
                      size: 100,
                    ),
                  ),
                  Text(
                    "Meetup Football",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      validator: (val) => !val.contains("@") ? "This is not email" : null,
                      onChanged: (val) => email = val,
                      decoration: InputDecoration(
                          hintText: "Please give email",
                          labelText: "Username"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      obscureText: true,
                      validator: (val) => val.length < 3 ? "Password should contains more than 3 marks" : null,
                      onChanged: (val) => password = val,
                      decoration: InputDecoration(
                          hintText: "Please give password",
                          labelText: "password"),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        onPressed: () {
                          if(_formKey.currentState.validate())
                          {
                            if(appBartext=="Login") AuthService().signIn(email: email,password: password);
                            if(appBartext=="Register") AuthService().signUp(email: email,password: password);
                          }
                        },
                        child: Text(buttonSubmittext),
                      )),
                ],
              ),
            )
          ]),
    );
  }
}
