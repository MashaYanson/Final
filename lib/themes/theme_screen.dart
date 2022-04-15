import 'package:flutter/material.dart';

ThemeData MyTheme() {
 return ThemeData(
   scaffoldBackgroundColor: Colors.white60,
   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange, accentColor: Colors.redAccent, backgroundColor: Colors.red),
   primaryColor: Colors.deepOrangeAccent,
   textTheme:const TextTheme( bodyText2: TextStyle(fontSize: 17.0, fontFamily: 'Hind', fontWeight: FontWeight.bold),
     headline6: TextStyle(fontSize: 30.0, fontWeight:FontWeight.bold)
   )

 );
}
