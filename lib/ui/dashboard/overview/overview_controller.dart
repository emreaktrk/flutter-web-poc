import 'package:charts_flutter/flutter.dart';
import 'package:flutter_web_poc/data/model/effort.dart';
import 'package:flutter_web_poc/domain/get_sample_efforts_use_case.dart';
import 'package:flutter_web_poc/domain/get_task_progress_use_case.dart';
import 'package:get/get.dart';

class OverviewController extends GetxController {
  final taskProgress = Rx<double?>(null);
  final series = Rx<Series<Effort, int>?>(null);

  @override
  void onInit() {
    super.onInit();

    GetTaskProgressUseCase().invoke().then((value) => taskProgress.value = value);

    final input = GetSampleEffortInputs(threshold: 5, size: 20);
    GetSampleEffortsUseCase().invoke(input).then((value) {
      series.value = Series<Effort, int>(
        id: 'Efforts',
        colorFn: (_, __) => MaterialPalette.green.shadeDefault,
        domainFn: (Effort effort, _) => effort.day,
        measureFn: (Effort effort, _) => effort.hours,
        data: value,
      )..setAttribute(rendererIdKey, 'hours');
    });
  }
}
