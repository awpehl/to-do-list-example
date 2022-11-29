import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/modules/to_do_list/controllers/todo_list_controller.dart';
import 'package:to_do_list/routes/app_routes.dart';
import 'package:to_do_list/utils/color_util.dart';
import 'package:to_do_list/widgets/todo_card.dart';

class ToDoListView extends GetView<ToDoListController> {
  const ToDoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtil.background,
      appBar: AppBar(
        title: const Text("To-Do List"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: <Widget>[
          Obx(() => ToDoCard(
                title: "To-Do 1",
                startDate: DateTime.parse("2021-09-01 00:00:00"),
                endDate: DateTime.parse("2021-09-01 00:00:00").add(const Duration(days: 1)),
                onChanged: (bool? value) {
                  controller.isDone.value = value!;
                },
                checkBoxValue: controller.isDone.value,
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.addToDo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
