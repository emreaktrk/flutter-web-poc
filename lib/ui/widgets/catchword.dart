import 'package:flutter/material.dart';

class Catchword extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? iconData;

  const Catchword({Key? key, required this.title, this.subtitle, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(32),
        visualDensity: const VisualDensity(vertical: VisualDensity.maximumDensity),
        leading: iconData != null
            ? Icon(
                Icons.stars,
                size: 48,
                color: Theme.of(context).colorScheme.primary,
              )
            : null,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
              )
            : null,
      ),
    );
  }
}
