import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/data/author/author_repository.dart';

import 'single_choice_controller.dart';

class SingleChoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleChoiceController>(
      () => SingleChoiceController(repository: AuthorRepository()),
    );
  }
}
