import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:matchApp/Screen/AddScreen.dart';
import 'package:matchApp/Services/AuthService.dart';
import 'package:matchApp/Widget/ListViewMatch.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
         appBar: AppBar(
          title: Text("Hello, ${Provider.of<FirebaseUser>(context).email}"),
          actions: <Widget>[
            IconButton(
            icon: Icon(FontAwesome.sign_out),
            onPressed: () {
              AuthService().logout();
            },
          ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.mail_outline)),
              Tab(icon: Icon(Icons.map)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
           ListViewMatch(flag: true),
           ListViewMatch(flag: false),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { 
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => AddScreen())
            );
           },
          child: Icon(Icons.add),
          ),
      ),
    );
  }
}