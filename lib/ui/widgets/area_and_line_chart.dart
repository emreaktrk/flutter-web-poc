import 'dart:math';

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_poc/data/model/effort.dart';

class AreaAndLineChart extends StatelessWidget {
  final List<Series<dynamic, num>> seriesList;
  final bool animate;

  const AreaAndLineChart(
    this.seriesList, {
    Key? key,
    this.animate = true,
  }) : super(key: key);

  /// Creates a [LineChart] with sample data and no transition.
  factory AreaAndLineChart.withSampleData() {
    return AreaAndLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LineChart(
      seriesList,
      animate: animate,
      primaryMeasureAxis: NumericAxisSpec(tickFormatterSpec: BasicNumericTickFormatterSpec((num? measure) => "${measure}h")),
      customSeriesRenderers: [
        LineRendererConfig(
          customRendererId: 'hours',
          includeArea: true,
          stacked: true,
        ),
      ],
    );
  }

  static List<Series<Effort, int>> _createSampleData() {
    const threshold = 5;
    final randomizer = Random();
    final randomData = List.generate(21, (index) => Effort(index, randomizer.nextInt(10) + threshold));

    return [
      Series<Effort, int>(
        id: 'Efforts',
        colorFn: (_, __) => MaterialPalette.green.shadeDefault,
        domainFn: (Effort effort, _) => effort.day,
        measureFn: (Effort effort, _) => effort.hours,
        data: randomData,
      )..setAttribute(rendererIdKey, 'hours'),
    ];
  }
}
