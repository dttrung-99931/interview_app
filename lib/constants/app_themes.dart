import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final theme = ThemeData(
    appBarTheme: appBar,
    buttonTheme: button,
    fontFamily: 'Noto Sans',
  );

  static const appBar = AppBarTheme(
    color: AppColors.primaryColor,
    titleTextStyle: TextStyle(
      color: AppColors.greyLight,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: AppColors.greyLight,
    ),
  );

  static const button = ButtonThemeData(
    buttonColor: AppColors.primaryColorDark,
    colorScheme: ColorScheme.dark(),
  );
}
