import 'package:pets/shared/ui/indicator/indicator.dart';
import 'package:flutter/material.dart';

class AndroidIndicator implements Indicator {
  @override
  Widget create(Color? color, Color? backgroundColor, AnimationController? controller, double? progress, double? radius, bool? animating) {
    return CircularProgressIndicator(
      color: color,
      backgroundColor: backgroundColor,
    );
  }
}
