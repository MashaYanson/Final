import 'package:flutter/material.dart';
var list = List<int>.generate(20, (i) => i + 1);

class Mylist extends StatelessWidget {
   Mylist({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
     padding: EdgeInsets.all(8),
      itemBuilder:(BuildContext context, int index){
         return ListTile(
           onTap: ()=>print(index),
            leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
            title: Text('track ' + (index+1).toString()),
            subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
          );
      } ,
    );
  }
}
