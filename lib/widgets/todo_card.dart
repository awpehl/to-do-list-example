import 'package:flutter/material.dart';
import 'package:to_do_list/utils/color_util.dart';
import 'package:to_do_list/utils/date_util.dart';

class ToDoCard extends StatelessWidget {
  const ToDoCard({
    Key? key,
    this.checkBoxValue = false,
    this.onChanged,
    required this.title,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final bool checkBoxValue;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 10),
                Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ToDoTime(label: "Start Date", time: DateUtil.formatMonthShortDate(startDate)),
                    ToDoTime(label: "End Date", time: DateUtil.formatMonthShortDate(endDate)),
                    ToDoTime(label: "Time Left", time: DateUtil.countDownBetweenTwoDates(startDate, endDate)),
                  ],
                ),
              ],
            ),
          ),
          // bottom part
          Container(
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: const BoxDecoration(
              color: ColorUtil.secondary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Text("Status", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorUtil.secondaryText)),
                    const SizedBox(width: 10),
                    Text(
                      checkBoxValue ? 'Completed' : 'Incomplete',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: checkBoxValue ? ColorUtil.orange : Colors.black),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Row(
                  children: <Widget>[
                    const Text("Tick if completed", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)),
                    const SizedBox(width: 10),
                    Container(color: Colors.white, height: 17.5, width: 17.5, child: Checkbox(value: checkBoxValue, onChanged: onChanged))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ToDoTime extends StatelessWidget {
  const ToDoTime({
    Key? key,
    required this.label,
    required this.time,
  }) : super(key: key);

  final String label;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorUtil.secondaryText)),
        const SizedBox(height: 10),
        Text(time, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
      ],
    );
  }
}
