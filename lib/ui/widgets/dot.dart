import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final Color? color;
  final double size;

  const Dot({
    Key? key,
    this.color,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
