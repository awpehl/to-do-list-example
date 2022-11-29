import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/routes/app_pages.dart';
import 'package:to_do_list/utils/color_util.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "ToDoList",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      scrollBehavior: const CupertinoScrollBehavior(),
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      theme: ThemeData(
        // textButtonTheme: TextButtonThemeData(
        //   style: ButtonStyle(
        //     padding: MaterialStateProperty.all(EdgeInsets.zero),
        //     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        //   ),
        // ),
        // text font
        unselectedWidgetColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFffbe23),
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 10,
          iconSize: 30,
          backgroundColor: ColorUtil.orange,
          foregroundColor: Colors.white,
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(ColorUtil.orange),
          checkColor: MaterialStateProperty.all(Colors.white),
          side: const BorderSide(color: Colors.black, width: 1),
          splashRadius: 10,
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}
