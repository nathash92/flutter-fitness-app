import 'package:fitness/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppConfigs {
  static inputLabelStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    );
  }

  static inputFocusedBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
