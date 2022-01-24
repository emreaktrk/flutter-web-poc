import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final IconData? iconData;
  final double iconSpace;

  const NavigateButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.iconData,
    this.iconSpace = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: iconData == null
            ? Text(
                title,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
              )
            : Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  if (iconSpace > 0) SizedBox(width: iconSpace),
                  Icon(iconData, size: 18),
                ],
              ),
      ),
    );
  }
}
