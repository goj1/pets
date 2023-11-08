import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/indicator/indicator_factory.dart';
import 'package:pets/util/enums/app_enum.dart';

class LoadingIndicator extends StatelessWidget {
  final AppEnum size;
  final Color color;
  final Color? backgroundColor;

  const LoadingIndicator({
    required this.size,
    required this.color,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                height: size == AppEnum.big ? 40.0 : 20.0,
                width: size == AppEnum.big ? 40.0 : 20.0,
                child: IndicatorFactory.getWidget(size, color),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: size == AppEnum.big ? 40.0 : 20.0,
                width: size == AppEnum.big ? 40.0 : 20.0,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: backgroundColor ?? AppColors.background,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: IndicatorFactory.getWidget(size, color),
              ),
            ),
          );
  }
}
