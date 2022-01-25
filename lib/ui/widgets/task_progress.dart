import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/task_label.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TaskProgress extends StatelessWidget {
  final String label;
  final double percent;
  final EdgeInsets margin;

  const TaskProgress({
    Key? key,
    required this.label,
    required this.percent,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Container(
      margin: margin,
      child: Column(
        children: [
          CircularPercentIndicator(
            radius: 56,
            percent: percent,
            lineWidth: 10,
            backgroundColor: Colors.black,
            progressColor: primaryColor,
            center: Text(
              "${percent * 100}%",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          const TaskLabel(label: "Prepare files"),
        ],
      ),
    );
  }
}
