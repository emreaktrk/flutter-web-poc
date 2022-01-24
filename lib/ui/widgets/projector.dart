import 'package:flutter/material.dart';

class Projector extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;
  final bool selected;

  const Projector({
    Key? key,
    this.selected = false,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final borderRadius = BorderRadius.circular(8);

    return InkWell(
      onTap: selected ? null : onTap,
      borderRadius: borderRadius,
      child: Container(
        width: 214,
        height: 214,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: selected ? Colors.black : null,
          borderRadius: borderRadius,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.agriculture,
              size: 32,
              color: selected ? secondaryColor : Colors.black,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: selected ? Colors.white : Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "View details",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, color: selected ? secondaryColor : Colors.black),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.arrow_forward,
                  size: 18,
                  color: selected ? secondaryColor : Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
