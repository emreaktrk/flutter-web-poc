import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/area_and_line_chart.dart';

class TaskChart extends StatelessWidget {
  final EdgeInsets margin;

  const TaskChart({
    Key? key,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: margin,
      child: AreaAndLineChart.withSampleData(),
    );
  }
}
