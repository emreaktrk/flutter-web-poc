import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/dashboard/overview/overview_page.dart';
import 'package:flutter_web_poc/ui/menu.dart';
import 'package:flutter_web_poc/ui/widgets/rail.dart';
import 'package:get/get.dart';

class DashboardPage extends GetResponsiveView {
  DashboardPage({Key? key}) : super(key: key);

  @override
  Widget phone() {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(),
      body: Stack(
        children: [
          OverviewPage(),
        ],
      ),
    );
  }

  @override
  Widget tablet() {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Rail(),
          Expanded(
            child: Stack(
              children: [
                OverviewPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Menu(),
          Expanded(
            child: Stack(
              children: [
                OverviewPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
