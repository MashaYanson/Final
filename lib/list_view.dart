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
      // children: const <Widget>[
      //   ListTile(
      //     leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
      //     title: Text("20"),
      //     subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
      //   ),
      //
      // ],
    );
  }
}
//
// class MylistItem extends StatelessWidget {
//   const MylistItem({Key? key}) : super(key: key);
//   final int number;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
//
// class MySepList extends StatelessWidget {
//   MySepList({Key? key}) : super(key: key);
//
//   var list = new List<int>.generate(10, (i) => i+1);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//         padding: const EdgeInsets.all(8),
//         itemCount: list.length,
//         itemBuilder:(BuildContext, int index) {
//           return MylistItem(number: index)
//         },
//         separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 3,) ,
//     );
//   }
// }
