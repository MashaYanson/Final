import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../components/my_app_bar.dart';

class FilesDemoScreen extends StatelessWidget {
  const FilesDemoScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlutterDemo(storage: CounterStorage()),
    );
  }
}


class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }


  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$counter');
  }
}

class FlutterDemo extends StatefulWidget {
  const FlutterDemo({Key? key, required this.storage}) : super(key: key);

  final CounterStorage storage;

  @override
  _FlutterDemoState createState() => _FlutterDemoState();

}



class _FlutterDemoState extends State<FlutterDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    widget.storage.readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Write the variable as a string to the file.
    return widget.storage.writeCounter(_counter);
  }


  @override
  Widget build(BuildContext context) {

    final _messengerKey = GlobalKey<ScaffoldMessengerState>();

    return Scaffold(
      appBar: MyAppBar(context),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white10,
                ),
                child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Soundcloud_logo.svg/440px-Soundcloud_logo.svg.png"),
                        ),
                        const Divider(),
                        const Text("Navigation"),
                      ],
                    ))),
            ListTile(
              leading: const Icon(Icons.rss_feed_sharp),
              title: const Text("Stream"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.manage_search),
              title: const Text("Search"),
              onTap: () {},
            ),
            const Divider(),
            const Text(
              "Your profile",
              textAlign: TextAlign.center,
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.add_reaction_outlined),
              title: const Text("Profile"),
              onTap: () {
                _messengerKey.currentState!.showSnackBar(const SnackBar(
                    content: Text("Redirecting to your profile")));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                _messengerKey.currentState!.showSnackBar(
                    const SnackBar(content: Text("Redirecting to settings")));
              },
            ),
            ListTile(
              leading: const Icon(Icons.payments),
              title: const Text("Restore subscriptions"),
              onTap: () {
                _messengerKey.currentState!.showSnackBar(const SnackBar(
                    content: Text("Redirecting to subscription page")));
              },
            ),
            const Divider(),
            const Text(
              "Help center",
              textAlign: TextAlign.center,
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.people_sharp),
              title: const Text("About us"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Contact support"),
              onTap: () {
                _messengerKey.currentState!.showSnackBar(
                    const SnackBar(content: Text("Opening chat with support")));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text("Log out"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}