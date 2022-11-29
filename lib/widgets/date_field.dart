import 'package:flutter/material.dart';
import 'package:to_do_list/utils/color_util.dart';

class DateField extends StatelessWidget {
  const DateField({
    Key? key,
    required this.label,
    required this.hintText,
    this.selectedDate,
    required this.onTap,
    this.errorMsg = 'Please select a date',
    this.showError = false,
  }) : super(key: key);

  final String label;
  final String hintText;
  final String errorMsg;
  final bool showError;
  final String? selectedDate;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: const TextStyle(color: ColorUtil.secondaryText, fontSize: 18)),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(color: showError ? Colors.red : Colors.black, width: showError ? 2 : 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(selectedDate ?? hintText, style: TextStyle(color: selectedDate != null ? Colors.black : ColorUtil.secondaryText.withOpacity(0.7), fontSize: 16)),
                  const Icon(Icons.keyboard_arrow_down, color: ColorUtil.secondaryText),
                ],
              ),
            ),
          ),
        ),
        if (showError) ...<Widget>[
          const SizedBox(height: 5),
          Text("    $errorMsg", style: const TextStyle(color: Colors.red, fontSize: 12)),
        ]
      ],
    );
  }
}
