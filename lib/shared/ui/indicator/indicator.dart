import 'package:flutter/material.dart';

abstract class Indicator {
  dynamic create(
    Color? color,
    Color? backgroundColor,
    AnimationController? controller,
    double? progress,
    double? radius,
    bool? animating,
  );
}
