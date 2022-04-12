import 'package:flutter/material.dart';
class Mylist extends StatelessWidget {
  const Mylist({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: const Text(
            " Charts: Top 20. "
                "The most played tracks on SoundCloud this week",
            textAlign: TextAlign.left,
          ),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/твит.jpg"),),
          title: Text("1"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
            ),
            ListTile(
            leading: CircleAvatar( foregroundImage: AssetImage("assets/dj1.jpg"),),
    title: Text("2"),
    subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
            ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("3"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/Spooky.jpg"),),
          title: Text("4"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/images-3.jpeg"),),
          title: Text("5"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/images-2.jpeg"),),
          title: Text("6"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/images.jpeg"),),
          title: Text("7"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/Gr_igla_01_ubt.jpeg"),),
          title: Text("8"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/DSC_3853.JPG"),),
          title: Text("9"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/dj-dtf-magazine6.jpg"),),
          title: Text("10"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/disko-shar-cveta-art.jpg"),),
          title: Text("11"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("12"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("13"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("14"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("15"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("16"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("17"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("18"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("19"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),
        ListTile(
          leading: CircleAvatar( foregroundImage: AssetImage("assets/vinilovye-plastinki-1.jpg"),),
          title: Text("20"),
          subtitle: Text(" Artist name - Unknown Album - Unknown Track"),
        ),

      ],
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
