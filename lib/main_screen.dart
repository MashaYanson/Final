import 'package:flutter/material.dart';
import 'package:widgets/auth_screen.dart';
import 'package:widgets/stream_page.dart';
import 'package:widgets/theme_screen.dart';
import 'counter.dart';
import 'home_screen.dart';


class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      debugShowCheckedModeBanner: false,
      theme: MyTheme(),
      home: const CircularProgressIndicator(),
    );
  }
}


