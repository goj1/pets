import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pets/infra/factories/navigation/custom_navigator.dart';
import 'package:pets/infra/factories/navigation/pages.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String namePage;
  final List<Widget>? icons;
  final Color? colorIcon;
  final BuildContext? sContext;
  final Widget? logo;

  const CustomAppBar({
    Key? key,
    required this.namePage,
    this.icons,
    this.sContext,
    this.colorIcon,
    this.logo,
    required iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: AppBar(
        leading: ModalRoute.of(context)?.settings.name == Pages.home
            ? const Text('')
            : InkWell(
                onTap: () => CustomNavigator.goBack(context),
                child: Icon(
                  Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
                  size: 28.0,
                  color: AppColors.primary,
                ),
              ),
        leadingWidth: ModalRoute.of(context)?.settings.name == Pages.home
            ? 8.0
            : Platform.isAndroid
                ? 44.0
                : 60.0,
        titleSpacing: ModalRoute.of(context)?.settings.name == Pages.home
            ? 0.0
            : Platform.isAndroid
                ? 8.0
                : 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: logo != null,
              child: logo ?? const Text(''),
            ),
            Visibility(
              visible: logo != null,
              child: const SizedBox(width: 8.0),
            ),
            Text(
              namePage,
              style: TextStyle(color: AppColors.primary, letterSpacing: 1.2),
            ),
          ],
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.primary,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        elevation: 0,
        actions: icons ?? [const Text('')],
        actionsIconTheme: const IconThemeData(size: 36),
      ),
    );
  }

  // RightIcon buildRightIcon(BuildContext context) => RightIcon(icon: icon, colorIcon: colorIcon, sContext: context);

  @override
  Size get preferredSize => const Size.fromHeight(59.0);
}
