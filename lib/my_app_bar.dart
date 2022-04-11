

import 'package:flutter/material.dart';

AppBar MyAppBar(context){
  final ButtonStyle buttonStyle =
  TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    centerTitle: true,
    title: Text("Home"),
    actions: <Widget>[
      IconButton(
          tooltip: "Notifications",
          onPressed: () {},
          icon: const Icon(Icons.add_alert)),
      IconButton(
          tooltip: "Settings",
          onPressed: () {},
          icon: const Icon(Icons.settings)),
      IconButton(
          tooltip: "Messages",
          onPressed: () {},
          icon: const Icon(Icons.message_rounded)),
      TextButton(
        onPressed: () {},
        child: Text("User Name"),
        style: buttonStyle,
      ),
    ],
  );
}