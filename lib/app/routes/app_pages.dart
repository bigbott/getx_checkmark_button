import 'package:get/get.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/multipleChoices/multiple_choices_binding.dart';
import '../modules/multipleChoices/multiple_choices_view.dart';
import '../modules/settings/settings_binding.dart';
import '../modules/settings/settings_view.dart';
import '../modules/singleChoice/single_choice_binding.dart';
import '../modules/singleChoice/single_choice_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MULTIPLE_CHOICES,
      page: () => const MultipleChoicesView(),
      binding: MultipleChoicesBinding(),
    ),
    GetPage(
      name: _Paths.SINGLE_CHOICE,
      page: () => const SingleChoiceView(),
      binding: SingleChoiceBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
