import 'package:essile/utils/theme/custom_themes/appbar_theme.dart';
import 'package:essile/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:essile/utils/theme/custom_themes/check_box_theme.dart';
import 'package:essile/utils/theme/custom_themes/chip_theme.dart';
import 'package:essile/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:essile/utils/theme/custom_themes/text_field_theme.dart';
import 'package:essile/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    chipTheme: EssileChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EssileAppBarTheme.lightAppBarTheme,
    checkboxTheme: EssileCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: EssileBottomSheetTheme.lightBottomSheetTheme,
    textTheme: EssileTextTheme.lightTextTheme,
    elevatedButtonTheme: EssileElevatedButtonTheme.lightElevatedButton,
    inputDecorationTheme: EssileTextFormFieldTheme.lightTextFormFieldTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    chipTheme: EssileChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: EssileAppBarTheme.darkAppBarTheme,
    checkboxTheme: EssileCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: EssileBottomSheetTheme.darkBottomSheetTheme,
    textTheme: EssileTextTheme.darkTextTheme,
    elevatedButtonTheme: EssileElevatedButtonTheme.darkElevatedButton,
    inputDecorationTheme: EssileTextFormFieldTheme.darkTextFormFieldTheme,
  );
}