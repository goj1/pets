import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets/util/enums/app_enum.dart';

class IndicatorFactory {
  static Widget getWidget(AppEnum size, Color color) {
    Widget indicatorData;

    if (Platform.isIOS) {
      indicatorData = getIosIndicator(size, color);
    } else {
      indicatorData = getAndroidIndicator(color);
    }

    return indicatorData;
  }

  static Widget getIosIndicator(AppEnum size, Color color) {
    return Transform.scale(
      scale: size == AppEnum.big ? 1.5 : 1.0,
      child: CupertinoActivityIndicator(
        color: color,
      ),
    );
  }

  static Widget getAndroidIndicator(Color color) {
    return CircularProgressIndicator(color: color);
  }
}
