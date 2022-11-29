import 'package:get/get.dart';

import '../controllers/todo_form_controller.dart';

class AddNewListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToDoFormController>(
      () => ToDoFormController(),
    );
  }
}
