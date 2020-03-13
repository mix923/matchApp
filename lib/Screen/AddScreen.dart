import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddAscreenState createState() => _AddAscreenState();
}

class _AddAscreenState extends State<AddScreen> {
  List<String> cities = [
    "Białystok",
    "Bydgoszcz",
    "Gdańsk",
    "Katowice",
    "Kielce",
    "Kraków",
    "Lublin",
    "Łódź",
    "Olsztyn",
    "Opole",
    "Poznań",
    "Szczecin",
    "Warszawa",
    "Wrocław",
    "Rzeszów",
    "Zielona Góra"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Match"),
      ),
      body: Container(
        child: ListView(children: [
          Form(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please give name of match",
                        labelText: "Name of match"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please give a information for members",
                        labelText: "Information"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownButtonFormField<String>(
                    value: cities[0],
                    style: TextStyle(
                      color: Colors.grey.shade800
                    ),
                    items: cities.map((city) {
                      return DropdownMenuItem<String>(
                          child: Text(city.toString()),
                          value: city.toString());
                    }).toList(),
                    onChanged: (value) {},
                    icon: Icon(Icons.map),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Add"),
                    )
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
