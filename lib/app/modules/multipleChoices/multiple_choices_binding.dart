import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/data/author/author_repository.dart';

import 'multiple_choices_controller.dart';

class MultipleChoicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultipleChoicesController>(
      () => MultipleChoicesController(repository: AuthorRepository()),
    );
  }
}
