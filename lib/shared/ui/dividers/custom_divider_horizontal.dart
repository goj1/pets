import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDividerHorizontal extends StatelessWidget {
  const CustomDividerHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      width: .5,
      color: AppColors.background,
    );
  }
}
