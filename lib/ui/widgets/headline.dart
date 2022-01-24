import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String title;
  final String? caption;

  const Headline({
    Key? key,
    required this.title,
    this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return caption != null
        ? Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 24,
                child: const VerticalDivider(indent: 0, endIndent: 0),
              ),
              Text(
                caption!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        : Text(
            title,
            style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),
          );
  }
}
