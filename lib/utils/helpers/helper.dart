import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Thelperfunctions {
  static Color? getColor(String value) {
    if (value == "Green") {
      return Colors.green;
    } else if (value == "Red") {
      return Colors.red;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Grey") {
      return Colors.grey;
    } else if (value == "Purple") {
      return Colors.purple;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "white") {
      return Colors.white;
    } else if (value == "Indigo") {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("ok"))
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String truncateText(String text, int maxlength) {
    if (text.length <= maxlength) {
      return text;
    } else {
      return text.substring(0, maxlength);
    }
  }

  static bool isdarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screensize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenheigth() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenwidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String formattedDate(DateTime date, {String format = "dd MMM  yyyy"}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapwidgets(List<Widget> widgets, int rowsize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowsize) {
      final rowchildren = widgets.sublist(
          i, i + rowsize > widgets.length ? widgets.length : i + rowsize);
      wrappedList.add(Row(
        children: rowchildren,
      ));
    }
    return wrappedList;
  }
}
