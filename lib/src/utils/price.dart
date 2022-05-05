import 'package:intl/intl.dart';

final oCcy = new NumberFormat("#,##0.00", "en_US");

String formartPrice(int number, String? prefix) {
  return oCcy.format(number);
}

bool validateEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

String formartDatetoString(DateTime date) {
  // DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  // String string = dateFormat.format(DateTime.now());
  // DateTime dateTime = dateFormat.parse(string);
  return DateFormat('yyyy-MM-dd  kk:mm').format(date);
}

DateTime formartStringtoDate(String date) {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  DateTime dateTime = dateFormat.parse(date);
  return dateTime;
}
