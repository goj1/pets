import 'package:pets/infra/factories/navigation/navigation_service.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomSnackBar {
  static showSnackBar(String message) {
    ScaffoldMessenger.of(NavigationService.appNavigator.currentContext!).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 4),
        showCloseIcon: true,
        closeIconColor: AppColors.black,
        backgroundColor: AppColors.primary,
        content: Text(
          message,
          style: TextStyle(
            fontSize: 16.0,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
