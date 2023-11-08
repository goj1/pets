import 'package:pets/shared/ui/indicator/indicator.dart';
import 'package:flutter/cupertino.dart';

class IOSIndicator implements Indicator{
  @override
  Widget create(Color? color, Color? backgroundColor, AnimationController? controller, double? progress, double? radius, bool? animating) {
    return CupertinoActivityIndicator(
      color: color,
    );
  }
}
