import 'package:flutter_web_poc/ui/dashboard/dashboard_page.dart';
import 'package:flutter_web_poc/ui/dashboard/overview/overview_binding.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: "/",
      page: () => DashboardPage(),
      bindings: [
        OverviewBinding(),
      ],
    ),
  ];
}
