import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  static void showUnExpectedErrorToast() {
    Fluttertoast.showToast(
      msg: "There has been an unexpected error, please try again later.",
      backgroundColor: Colors.grey,
      textColor: const Color(0xffE00800),
      fontSize: 14,
      timeInSecForIosWeb: 8,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static void showErrorToast(String msg, {Toast? length}) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.grey,
      textColor: const Color(0xffE00800),
      fontSize: 14,
      timeInSecForIosWeb: 8,
      toastLength: length ?? Toast.LENGTH_LONG,
    );
  }

  static void showSuccessToast(String msg, {Toast? length}) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.grey,
      textColor: const Color(0xffE00800),
      fontSize: 14,
      toastLength: length ?? Toast.LENGTH_LONG,
      timeInSecForIosWeb: 8,
    );
  }
}
