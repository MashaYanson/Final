import 'package:flutter/material.dart';
import 'package:widgets/screens/auth_screen.dart';
import 'package:widgets/screens/stream_page.dart';
import 'package:widgets/themes/theme_screen.dart';
import '../old/counter.dart';
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
      home: const MyApp(),
    );
  }
}


