import 'package:flutter/material.dart';
import 'package:widgets/home_screen.dart';
import 'package:widgets/list_view.dart';
import 'my_app_bar.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _messengerKey = GlobalKey<ScaffoldMessengerState>();

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
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
      body: Container(
      width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
    color: Colors.white24,
    ),
        child: Mylist(),
      ),
    );
  }
}
