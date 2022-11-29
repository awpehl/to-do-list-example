import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddNewListController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final FocusNode titleFocusNode = FocusNode();

  RxString toDoTitleField = ''.obs;
  Rxn<DateTime> startDateField = Rxn<DateTime>();
  Rxn<DateTime> endDateField = Rxn<DateTime>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    titleController.dispose();
    titleFocusNode.dispose();
    super.onClose();
  }
}
