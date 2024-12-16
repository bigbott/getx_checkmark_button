import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/data/author/author_repository_interface.dart';

class SingleChoiceController extends GetxController {
  IAuthorRepository repository;

  SingleChoiceController ({required this.repository});

  int checkedIndex = -1;
  var authors =  [];

  @override
  void onInit() {
    authors = repository.getAuthors();
    super.onInit();
  }

  void checkmarkButtonTapped(index) {
     if (checkedIndex != index) {
      checkedIndex = index;
    } else {
      checkedIndex = -1;
    }
    update();
  }
}
