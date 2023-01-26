import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:intl/intl.dart';

String currentDateAndTime() {
  var now = DateTime.now();
  var formatter = DateFormat(constants.currentDateAndTime);
  String formattedDate = formatter.format(now);
  return formattedDate;
}

String currentDate() {
  var now = DateTime.now();
  var formatter = DateFormat(constants.currentDateNumeric);
  String formattedDate = formatter.format(now);
  return formattedDate;
}
