
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key key}) : super(key:key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(0,50,0,50),
        children: <Widget>[ 
          Form(
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
                  decoration: InputDecoration(
                    hintText: "Please give username",
                    labelText: "Username"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Please give password",
                    labelText: "password"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: () {  },
                  child: Text("Save"),
                )
              ),
            ],
          ),
        )
        ]
      ),
    );
  }
}