import 'package:flutter/material.dart';
import '../../Core/Resources/uilites.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorManager.primary, //thereby
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.search,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 0,
          color: ColorManager.search,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 0,
          color: ColorManager.search,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: Colors.red),
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s18,
        fontWeight: FontWeight.w600,
        // height: 20
      )
    ),
  );
}
