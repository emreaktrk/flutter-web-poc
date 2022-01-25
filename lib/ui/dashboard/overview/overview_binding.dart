import 'package:flutter_web_poc/ui/dashboard/overview/overview_controller.dart';
import 'package:get/get.dart';

class OverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OverviewController());
  }
}
