import 'package:flutter/material.dart';
import '../../core/resources/uilites.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    fontFamily: FontConstants.fontFamily,
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
      iconTheme: IconThemeData(size: 25),
      color: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s20,
        fontWeight: FontWeightManager.w600,
        fontFamily: FontConstants.fontFamily,
      ),
    ),
  );
}
