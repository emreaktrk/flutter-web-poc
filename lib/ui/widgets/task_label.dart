import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/dot.dart';

class TaskLabel extends StatelessWidget {
  final String label;

  const TaskLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Dot(
          size: 8,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
