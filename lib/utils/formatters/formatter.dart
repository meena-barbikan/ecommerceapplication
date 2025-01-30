import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_US", symbol: "\$").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String internationalPhonenumber(String phoneNumber) {
    var digitsonly = phoneNumber.replaceAll(RegExp(r'\D'), "");
    String countrycode = digitsonly.substring(0, 1);
    digitsonly = digitsonly.substring(2);
    final formattednumber = StringBuffer();
    formattednumber.write("($countrycode)");
    int i = 0;
    while (i < digitsonly.length) {
      int grouplength = 2;
      if (i == 0 && countrycode == "+1") {
        grouplength = 3;
      }
      int end = i + grouplength;
      formattednumber.write(digitsonly.substring(i, end));
      if (end < digitsonly.length) {
        formattednumber.write("");
      }
      i = end;
    }
    return phoneNumber;
  }
}
