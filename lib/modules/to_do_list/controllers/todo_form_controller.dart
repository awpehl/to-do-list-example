import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ToDoFormController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final FocusNode titleFocusNode = FocusNode();

  //RxString toDoTitleField = ''.obs;
  RxBool showTitleError = false.obs;
  RxBool showStartDateError = false.obs;
  RxBool showEndDateError = false.obs;

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

  void validateTitle() {
    if (titleController.text.isEmpty) {
      showStartDateError.value = true;
    } else {
      showStartDateError.value = false;
    }
  }

  void validateStartDate() {
    if (startDateField.value == null) {
      showStartDateError.value = true;
    } else {
      showStartDateError.value = false;
    }
  }

  void validateEndDate() {
    if (endDateField.value == null) {
      showEndDateError.value = true;
    } else {
      showEndDateError.value = false;
    }
  }

  void validateToDoForm() {
    validateTitle();
    validateStartDate();
    validateEndDate();
  }
}
