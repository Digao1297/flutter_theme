import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/utils/theme/app_colors.dart';

class AppTheme {
  final BuildContext context;

  AppTheme({this.context});

  ThemeData get themeLight => ThemeData(
        //define o brilho do tema
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.accentColor,
      );

  ThemeData get themeDark => ThemeData(
        //define o brilho do tema
        brightness: Brightness.dark,
        primaryColor: AppColors.primaryColorDark,
        accentColor: AppColors.accentColorDark,
      );
}
