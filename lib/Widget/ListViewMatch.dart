import 'package:flutter/material.dart';

import 'BuilderListViewParticipators.dart';

class ListViewMatch extends StatefulWidget {

  final bool flag;

  const ListViewMatch({Key key, this.flag}) : super(key:key);

  @override
  _ListViewMatchState createState() => _ListViewMatchState();
}

class _ListViewMatchState extends State<ListViewMatch> {

  void bottomSheet(BuildContext context){
     showModalBottomSheet(context: context,builder: (context){
      return BuilderListViewParticipators();
    });
  }

  List<String> example =["Hello","Yes","No","Or","And"];
  List<String> example2 =["List2","List2","List2","List2","List2"];
  
  @override
  Widget build(BuildContext context) {
    return widget.flag == true ? ListView.separated(
      itemBuilder: (context, itemIndex){
        return Card(
          child: ListTile(
            onTap: (){
              bottomSheet(context);
            },
            title: Text(example[itemIndex]),
          ),
        );
      }, 
      separatorBuilder: ( context, index) => Divider(), 
      itemCount: example.length,
      )
      :
      ListView.separated(
      itemBuilder: (context, itemIndex){
        return Card(
          child: ListTile(
            title: Text(example2[itemIndex]),
            trailing: RaisedButton(
              onPressed: () {  },
              child: Icon(Icons.delete,color: Colors.red[300])
            ),
          ),
        );
      }, 
      separatorBuilder: ( context, index) => Divider(), 
      itemCount: example2.length);
  }

}