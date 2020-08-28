import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'screens/start_screen.dart';
import 'services/service_locator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    setupServiceLocator();
    return GetMaterialApp(home: StartScreen());
  }
}
