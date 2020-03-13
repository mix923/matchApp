import 'package:flutter/material.dart';
import 'package:matchApp/Screen/AddScreen.dart';
import 'package:matchApp/Widget/ListViewMatch.dart';

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
          title: Text("Hello mix923"),
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