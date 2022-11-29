import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/modules/to_do_list/controllers/todo_form_controller.dart';
import 'package:to_do_list/utils/date_util.dart';
import 'package:to_do_list/widgets/primary_button.dart';
import 'package:to_do_list/widgets/date_field.dart';
import 'package:to_do_list/widgets/todo_form_field.dart';

import '../../../utils/color_util.dart';

class AddNewListView extends GetView<ToDoFormController> {
  const AddNewListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // un-focus to do title field
        controller.titleFocusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_arrow_left_sharp, size: 30),
          ),
          automaticallyImplyLeading: true,
          titleSpacing: 0,
          title: const Text('Add new To-Do List'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          children: <Widget>[
            ToDoFormField(
              label: 'To-Do Title',
              hintText: 'Please key in your To-Do title',
              maxLines: 6,
              controller: controller.titleController,
              focusNode: controller.titleFocusNode,
              onChanged: (String value) {
                //controller.title = value;
              },
            ),
            const SizedBox(height: 20),
            ToDoFormField(
              label: 'Start Date',
              hintText: 'Select a date',
              controller: controller.startDateController,
              onChanged: (String value) {
                //controller.title = value;
              },
              onTap: () async {
                controller.titleFocusNode.unfocus();
                controller.startDateField.value = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (controller.startDateField.value != null) {
                  controller.startDateController.text = DateUtil.formatDefaultDate(controller.startDateField.value!);
                } else {
                  controller.startDateController.clear();
                }
              },
            ),
            const SizedBox(height: 20),
            ToDoFormField(
              label: 'Estimate End Date',
              hintText: 'Select a date',
              controller: controller.endDateController,
              onChanged: (String value) {
                //controller.title = value;
              },
              onTap: () async {
                controller.titleFocusNode.unfocus();
                controller.endDateField.value = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (controller.endDateField.value != null) {
                  controller.endDateController.text = DateUtil.formatDefaultDate(controller.endDateField.value!);
                } else {
                  controller.endDateController.clear();
                }
              },
            ),
          ],
        ),
        bottomNavigationBar: PrimaryButton(label: 'Create Now', onTap: () {}),
      ),
    );
  }
}
