import 'package:get/get.dart';

import '../controllers/add_new_list_controller.dart';

class AddNewListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddNewListController>(
      () => AddNewListController(),
    );
  }
}
