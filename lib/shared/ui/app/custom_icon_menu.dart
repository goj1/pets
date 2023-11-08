import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomIconMenu extends StatelessWidget {
  final double? iconSize;
  const CustomIconMenu({this.iconSize, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Center(
        child: InkWell(
          onTap: () => Scaffold.of(context).openEndDrawer(),
          child: SizedBox(
            width: iconSize,
            height: iconSize,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 2.0),
                    height: 2.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2.0),
                  height: 2.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 2.0),
                    height: 2.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
