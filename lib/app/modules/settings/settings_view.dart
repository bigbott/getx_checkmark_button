import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/modules/widgets/checkmark_button.dart';

import 'settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: GetBuilder<SettingsController>(
            builder: (controller) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CheckmarkButton(
                      checked: controller.settings.getxEnabled,
                      onPressed: controller.enableDisableGetX,
                      index: -1,
                      child: Text('GetX is enabled', style: TextStyle(fontSize: 18)),),
                      SizedBox(height: 15,), 
                   CheckmarkButton(
                      checked: controller.settings.blocEnabled,
                      onPressed: controller.enableDisableBloc,
                      index: -1,
                      child: Text('BLoC is enabled', style: TextStyle(fontSize: 18)),),
                      SizedBox(height: 15,), 
                    CheckmarkButton(
                      checked: controller.settings.riverpodEnabled,
                      onPressed: controller.enableDisableRiverpod,
                      index: -1,
                      child: Text('Riverpod is enabled', style: TextStyle(fontSize: 18)),),       
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
