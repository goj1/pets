import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'active_indicator_widget.dart';

class IndicatorWidget extends StatelessWidget {
  final int count;
  final PageController controller;

  const IndicatorWidget({Key? key, required this.count, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 120,
      alignment: Alignment.center,
      child: Center(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                count,
                (index) => GestureDetector(
                  onTap: () {
                    // pages distance?
                    final distance = (index - controller.page!).abs().toInt();
                    controller.animateToPage(
                      index,
                      duration: Duration(milliseconds: 280 * distance),
                      curve: Curves.easeInOutExpo,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white.withOpacity(.9),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ActiveIndicatorWidget(controller: controller),
          ],
        ),
      ),
    );
  }
}
