import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Icon(
                Icons.add_to_drive,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.account_circle),
              selectedColor: Colors.white,
            ),
            const ListTile(
              title: Text("Overview"),
              leading: Icon(Icons.insert_chart),
              selected: true,
              selectedColor: Colors.white,
            ),
            const ListTile(
              title: Text("Calendar"),
              leading: Icon(Icons.calendar_today),
              selectedColor: Colors.white,
            ),
            const ListTile(
              title: Text("Team"),
              leading: Icon(Icons.supervised_user_circle_sharp),
              selectedColor: Colors.white,
            ),
            const Divider(),
            const ListTile(
              title: Text("Chat"),
              leading: Icon(Icons.chat),
              selectedColor: Colors.white,
            ),
            const ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
