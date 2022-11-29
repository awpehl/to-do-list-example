import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/modules/to_do_list/controllers/add_new_list_controller.dart';
import 'package:to_do_list/utils/date_util.dart';
import 'package:to_do_list/widgets/primary_button.dart';
import 'package:to_do_list/widgets/date_field.dart';
import 'package:to_do_list/widgets/to_do_title_field.dart';

class AddNewListView extends GetView<AddNewListController> {
  const AddNewListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
            ToDoTitleField(
              label: 'To-Do Title',
              hintText: 'Please key in your To-Do title',
              controller: controller.titleController,
              focusNode: controller.titleFocusNode,
              onChanged: (String value) {
                //controller.title = value;
              },
            ),
            const SizedBox(height: 20),
            Obx(() => DateField(
                  label: 'Start Date',
                  hintText: 'Select a date',
                  onTap: () async {
                    controller.startDateField.value = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                    );
                  },
                  selectedDate: controller.startDateField.value != null ? DateUtil.formatDefaultDate(controller.startDateField.value!) : null,
                )),
            const SizedBox(height: 20),
            Obx(
              () => DateField(
                label: 'Estimate End Date',
                hintText: 'Select a date',
                selectedDate: controller.endDateField.value != null ? DateUtil.formatDefaultDate(controller.endDateField.value!) : null,
                onTap: () async {
                  controller.endDateField.value = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: PrimaryButton(
          label: 'Create Now',
          onTap: () {},
        ),
      ),
    );
  }
}
