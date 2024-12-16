import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/routes/app_pages.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {  
                Get.toNamed(Routes.MULTIPLE_CHOICES); 
              },
              child: Text(
                'Multiple choices example',
                style: TextStyle(fontSize: 20),
              ),
            ),
             ElevatedButton(
              onPressed: () {  
                Get.toNamed(Routes.SINGLE_CHOICE); 
              },
              child: Text(
                'Single choice example',
                style: TextStyle(fontSize: 20),
              ),
            ),
             ElevatedButton(
              onPressed: () {  
                Get.toNamed(Routes.SETTINGS); 
              },
              child: Text(
                'Settings example',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
