import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/dot.dart';

class IconicButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final bool showDot;
  final double size;
  final String? label;
  final Color iconColor;
  final Color strokeColor;
  final Color backgroundColor;

  const IconicButton({
    Key? key,
    required this.iconData,
    required this.onTap,
    this.showDot = false,
    this.size = 48,
    this.label,
    this.iconColor = Colors.black,
    this.strokeColor = Colors.black,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              if (showDot) ...{
                const Positioned.fill(
                  top: 8,
                  right: 8,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Dot(),
                  ),
                ),
              },
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor,
                  border: Border.all(color: strokeColor, width: 2),
                ),
              ),
              Icon(iconData, color: iconColor),
            ],
          ),
          if (label != null) ...{
            const SizedBox(height: 8),
            Text(
              label!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button!.copyWith(fontWeight: FontWeight.bold),
            )
          }
        ],
      ),
      onTap: onTap,
    );
  }
}
