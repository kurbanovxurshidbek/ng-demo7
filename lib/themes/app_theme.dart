import 'package:flutter/material.dart';
import 'package:ngdem07/themes/app_color.dart';

class AppTheme {
  static ThemeData themeData(bool isDark) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDark ? AppColor.colorDarkBlue : AppColor.colorLightBlue,
        appBarTheme: isDark
            ? AppBarTheme(
                color: AppColor.colorDarkBlue,
                titleTextStyle:
                    TextStyle(color: AppColor.colorWhite, fontSize: 20),
                iconTheme: IconThemeData(color: AppColor.colorWhite))
            : AppBarTheme(
                color: AppColor.colorLightBlue,
                titleTextStyle:
                    TextStyle(color: AppColor.colorDarkBlue, fontSize: 20),
                iconTheme: IconThemeData(color: AppColor.colorDarkBlue)),
        tabBarTheme: isDark
            ? const TabBarTheme(
                labelColor: AppColor.colorLightBlue,
                unselectedLabelColor: AppColor.colorGrey)
            : const TabBarTheme(
                labelColor: AppColor.colorDarkBlue,
                unselectedLabelColor: AppColor.colorGrey),
        useMaterial3: true,
        colorScheme:
            isDark ? AppColor.darkColorScheme : AppColor.lightColorScheme);
  }
}
