import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(color: Colors.indigo , width: 3),
            ),
            alignment: Alignment.center,
            child: const Text("Текст", textDirection: TextDirection.ltr,),
          ),
        ),
      ),
    );
  }
}
