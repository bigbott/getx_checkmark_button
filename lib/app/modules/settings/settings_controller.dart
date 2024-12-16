import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/data/settings/settings.dart';

class SettingsController extends GetxController {
  final settings = Settings();


  void enableDisableGetX(_) {
    if (settings.getxEnabled) {
      settings.getxEnabled = false;
    } else {
      settings.getxEnabled = true;
    }
    update();
  }

  void enableDisableBloc(_) {
    if (settings.blocEnabled) {
      settings.blocEnabled = false;
    } else {
      settings.blocEnabled = true;
    }
    update();
  }

  void enableDisableRiverpod(_) {
    if (settings.riverpodEnabled) {
      settings.riverpodEnabled = false;
    } else {
      settings.riverpodEnabled = true;
    }
    update();
  }
}
