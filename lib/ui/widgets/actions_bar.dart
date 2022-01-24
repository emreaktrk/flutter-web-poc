import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/iconic_button.dart';

class ActionsBar extends StatelessWidget {
  const ActionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: double.infinity,
      color: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 36,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage("https://loremflickr.com/360/360/man"),
          ),
          Text(
            "John Doe",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconicButton(
            iconData: Icons.add,
            label: "Create Project",
            backgroundColor: Colors.black,
            iconColor: Colors.white,
            size: 56,
            onTap: () {},
          ),
          const SizedBox(height: 64),
          IconicButton(
            iconData: Icons.add,
            label: "Add new task",
            size: 56,
            onTap: () {},
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 36,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage("https://loremflickr.com/360/360/girl"),
          ),
          const CircleAvatar(
            radius: 36,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage("https://loremflickr.com/500/300/man"),
          ),
          const SizedBox(height: 8),
          IconicButton(
            iconData: Icons.add,
            size: 56,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
