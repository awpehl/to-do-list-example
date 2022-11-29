import 'package:flutter/material.dart';
import 'package:to_do_list/utils/color_util.dart';

class ToDoTitleField extends StatelessWidget {
  const ToDoTitleField({
    Key? key,
    required this.label,
    required this.hintText,
    this.controller,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);

  final String label;
  final String hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: const TextStyle(color: ColorUtil.secondaryText, fontSize: 18)),
        const SizedBox(height: 10),
        TextField(
          maxLines: 6,
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: ColorUtil.theme,
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: ColorUtil.theme, width: 2.0), borderRadius: BorderRadius.all(Radius.circular(0))),
            hintStyle: TextStyle(color: ColorUtil.secondaryText.withOpacity(0.5)),
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1.0), borderRadius: BorderRadius.all(Radius.circular(0))),
          ),
        ),
      ],
    );
  }
}
