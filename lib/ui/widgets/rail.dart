import 'package:flutter/material.dart';

class Rail extends StatelessWidget {
  const Rail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        child: IntrinsicHeight(
          child: NavigationRail(
            selectedIndex: 1,
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Icon(
                Icons.add_to_drive,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.account_circle),
                label: Text("Profile"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.insert_chart),
                label: Text("Overview"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.calendar_today),
                label: Text("Calendar"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.supervised_user_circle_sharp),
                label: Text("Team"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.chat),
                label: Text("Chat"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
