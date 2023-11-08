import 'package:flutter/material.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pets/util/enums/app_enum.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(.3),
      ),
      child: Center(
        child: Container(
          height: 150.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingIndicator(
                size: AppEnum.big,
                color: AppColors.primary,backgroundColor: null,
              ),
              Text(
                '',
                style: TextStyle(fontSize: 18.0, color: AppColors.secondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
