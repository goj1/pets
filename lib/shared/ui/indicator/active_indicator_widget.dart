import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ActiveIndicatorWidget extends StatefulWidget {
  final PageController controller;

  const ActiveIndicatorWidget({Key? key, required this.controller}) : super(key: key);

  @override
  ActiveIndicatorWidgetState createState() => ActiveIndicatorWidgetState();
}

class ActiveIndicatorWidgetState extends State<ActiveIndicatorWidget> {
  double dotW = 12;
  double dotSep = 5;
  double pagePercent = 0;

  @override
  void initState() {
    super.initState();
    control.addListener(onPageScroll);
    SchedulerBinding.instance.addPostFrameCallback((_) => onPageScroll());
  }

  PageController get control => widget.controller;

  void onPageScroll() {
    pagePercent = control.position.pixels / control.position.viewportDimension;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    control.removeListener(onPageScroll);
  }

  @override
  Widget build(BuildContext context) {

    double rel = pagePercent % 1;
    double currPage = pagePercent.floorToDouble();
    final dotSep2 = dotSep * 2;
    double w, x;
    double currX = currPage * (dotW + dotSep2) + dotSep;
    if (rel < .5) {
      final p = rel / .5;
      w = dotW + p * (dotW + dotSep2);
      x = currX;
    } else {
      final p = (rel - .5) / .5;
      x = currX + p * (dotW + dotSep2);
      w = (currX + (dotW + dotSep) * 2) - x;
    }

    return Positioned(
      left: (Offset.zero.dx + 27) + x,
      child: Container(
        width: w,
        height: dotW,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dotW / 2),
          color: AppColors.primary,
        ),
      ),
    );
  }
}
