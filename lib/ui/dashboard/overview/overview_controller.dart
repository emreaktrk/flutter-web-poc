import 'package:flutter_web_poc/domain/get_task_progress_use_case.dart';
import 'package:get/get.dart';

class OverviewController extends GetxController {
  final taskProgress = Rx<double?>(null);

  @override
  void onInit() {
    super.onInit();

    GetTaskProgressUseCase().invoke().then((value) => taskProgress.value = value);
  }
}
