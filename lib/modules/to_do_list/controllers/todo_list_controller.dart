import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/data/local_storage/shared_preferences.dart';
import 'package:to_do_list/data/models/todo_model.dart';

class ToDoListController extends GetxController {
  RxBool isDone = false.obs;
  List<ToDoModel> toDoList = <ToDoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    toDoList = UserSharedPreferences.getToDoList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void deleteToDo(String id) {
    Get.dialog(
      AlertDialog(
        title: const Text('Delete To-Do'),
        content: const Text('Are you sure you want to delete this To-Do?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              toDoList.removeWhere((ToDoModel e) => e.id == id);
              UserSharedPreferences.setToDoList(toDoList);
              update();
              Get.back();
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
