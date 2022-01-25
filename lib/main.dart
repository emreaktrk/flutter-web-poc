import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/web_drag_scroll_behavior.dart';
import 'package:get/get.dart';

import 'app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Admin Panel',
      debugShowCheckedModeBanner: false,
      scrollBehavior: WebDragScrollBehavior(),
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0, color: Colors.transparent, iconTheme: IconThemeData(color: Colors.black)),
        textTheme: Theme.of(context).textTheme.apply(displayColor: Colors.black),
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.black),
        navigationRailTheme: const NavigationRailThemeData(
          backgroundColor: Colors.black,
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.white),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Colors.grey,
          iconColor: Colors.grey,
          contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        dividerTheme: const DividerThemeData(color: Colors.grey, indent: 32, endIndent: 32),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepOrange,
          secondary: Colors.lightGreen,
        ),
        cardTheme: const CardTheme(elevation: 12, shadowColor: Colors.white),
      ),
    );
  }
}
