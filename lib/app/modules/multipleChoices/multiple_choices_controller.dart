
import 'package:get/get.dart';
import 'package:getx_checkmark_button/app/data/author/author_repository_interface.dart';

class MultipleChoicesController extends GetxController {
  IAuthorRepository repository;

  MultipleChoicesController ({required this.repository});

  var checkedIndeces = [];
  var authors =  [];

  @override
  void onInit() {
    authors = repository.getAuthors();
    super.onInit();
  }



  void checkmarkButtonTapped(index) {
     if (!checkedIndeces.contains(index)) {
      checkedIndeces.add(index);
    } else {
      checkedIndeces.removeWhere((value) => value == index);
    }
    update();
  }
}
