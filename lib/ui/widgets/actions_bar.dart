import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_poc/ui/widgets/iconic_button.dart';

class ActionsBar extends StatelessWidget {
  const ActionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        child: IntrinsicHeight(
          child: Container(
            width: 120,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                const SizedBox(height: 64),
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://loremflickr.com/360/360/man"),
                ),
                const SizedBox(height: 8),
                Text(
                  "John Doe",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const SizedBox(height: 120),
                const Spacer(),
                IconicButton(
                  iconData: Icons.add,
                  label: "Create Project",
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                  size: 60,
                  onTap: () {},
                ),
                const SizedBox(height: 36),
                IconicButton(
                  iconData: Icons.add,
                  label: "Add new task",
                  size: 60,
                  onTap: () {},
                ),
                const Spacer(),
                const SizedBox(height: 120),
                const Spacer(),
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://loremflickr.com/360/360/girl"),
                ),
                const SizedBox(height: 8),
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://loremflickr.com/500/300/man"),
                ),
                const SizedBox(height: 8),
                IconicButton(
                  iconData: Icons.add,
                  size: 60,
                  onTap: () {},
                ),
                const SizedBox(height: 64),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
