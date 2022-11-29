import 'package:intl/intl.dart';

class DateUtil {
  // eg 30 Nov 2022
  static final DateFormat _dFMonthShortDate = DateFormat('dd MMM yyyy');
  // eg 30 November 2022
  static final DateFormat _dFDefaultDate = DateFormat('dd MMMM yyyy');

  static String formatMonthShortDate(DateTime d) => _dFMonthShortDate.format(d);
  static String formatDefaultDate(DateTime d) => _dFDefaultDate.format(d);

  // count down between two dates
  static String countDownBetweenTwoDates(DateTime startDate, DateTime endDate) {
    final Duration duration = endDate.difference(startDate);
    final int days = duration.inDays;
    final int hours = duration.inHours;
    final int minutes = duration.inMinutes;
    final int months = days ~/ 30;
    final int years = months ~/ 12;
    if (years > 0) {
      if (months % 12 == 0) {
        return "$years years";
      } else {
        return "$years yrs ${months % 12} mon";
      }
    } else if (months > 0) {
      if (days % 30 == 0) {
        return "$months months";
      } else {
        return "$months mon ${days % 30} days";
      }
    } else if (days > 0) {
      if (hours % 24 == 0) {
        return "$days days";
      } else {
        return "$days days ${hours % 24} hrs";
      }
    } else if (hours > 0) {
      if (minutes % 60 == 0) {
        return "$hours hours";
      } else {
        return "$hours hrs ${minutes % 60} min";
      }
    } else if (minutes > 0) {
      if (duration.inSeconds % 60 == 0) {
        return "$minutes minutes";
      } else {
        return "$minutes min ${duration.inSeconds % 60} sec";
      }
    } else {
      return "time up";
    }
  }
}
