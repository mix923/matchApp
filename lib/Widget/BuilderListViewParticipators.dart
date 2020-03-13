import 'package:flutter/material.dart';

class BuilderListViewParticipators extends StatelessWidget {

  List<String> participators = ["Aga Molik","Artur Molik","Wojtek Molik","Andrzej Molik"];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context,index){
        if(index == 0 )
        {
          return Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Text(
              "Who will participate in match ?",
              textAlign: TextAlign.center,
              style: TextStyle( fontSize: 20,color: Colors.black),
              ),
          );
        }
        index -=1 ;
        return ListTile(
          title: Text(participators[index]),
        );
      }, 
      separatorBuilder: (context,index) => Divider(), 
      itemCount: participators.length + 1
      );
  }
}
