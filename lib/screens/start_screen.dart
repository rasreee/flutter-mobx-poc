import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx_poc/screens/base_screen.dart';

import 'base_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Start')),
        body: Center(
            child: RaisedButton(
                onPressed: () {
                  Get.to(BaseScreen());
                },
                child: Text('Proceed'))));
  }
}
