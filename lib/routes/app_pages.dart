import 'package:get/get.dart';
import 'package:to_do_list/modules/to_do_list/bindings/add_list_binding.dart';
import 'package:to_do_list/modules/to_do_list/bindings/to_do_list_binding.dart';
import 'package:to_do_list/modules/to_do_list/views/add_new_list_view.dart';
import 'package:to_do_list/modules/to_do_list/views/to_do_list_view.dart';
import 'package:to_do_list/routes/app_routes.dart';

// ignore_for_file: always_specify_types
class AppPages {
  static String initialRoute = AppRoutes.toDoList;
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.toDoList,
      page: () => const ToDoListView(),
      binding: ToDoListBinding(),
    ),
    GetPage(
      name: AppRoutes.addToDo,
      page: () => const AddNewListView(),
      binding: AddNewListBinding(),
    ),
  ];
}
