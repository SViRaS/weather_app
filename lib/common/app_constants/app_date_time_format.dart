// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';

class DateUtil {
  static String formattedDate_yMMMEd(DateTime dateTime) {
    return DateFormat('EEE, MMM d, y').format(dateTime);
  }
  static String formattedDate_EEEE_MMM(DateTime dateTime) {
    return DateFormat('EEEE, MMM').format(dateTime);
  }
  static String formattedDate_EEEE_d(DateTime dateTime) {
    return DateFormat('EEEE, d').format(dateTime);
  }
}
