import 'package:flutter/material.dart';

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
            Text("Hello one"),
            Text("Hello two"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          ),
      ),
    );
  }
}