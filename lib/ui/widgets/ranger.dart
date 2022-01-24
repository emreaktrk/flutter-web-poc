import 'package:flutter/material.dart';

class Ranger extends StatelessWidget {
  final String from;
  final String to;

  const Ranger({
    Key? key,
    required this.from,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.calendar_today, size: 18),
        const SizedBox(width: 8),
        Text(
          "$from - $to",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
