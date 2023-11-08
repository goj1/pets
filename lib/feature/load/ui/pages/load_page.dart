import 'package:flutter/material.dart';
import 'package:pets/infra/factories/navigation/custom_navigator.dart';
import 'package:pets/infra/factories/navigation/navigation_service.dart';
import 'package:pets/infra/factories/navigation/pages.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/ui/controllers/core_controller.dart';
import 'package:pets/shared/ui/app/custom_scaffold.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/loading_indicators/loading_indicator.dart';
import 'package:pets/util/enums/app_enum.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  LoadPageState createState() => LoadPageState();
}

class LoadPageState extends State<LoadPage> {
  final CoreController _coreController = getIt<CoreController>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

    });
    _coreController.loadData().then((value) {
      Future.delayed(const Duration(milliseconds: 600), () {
        if (!_coreController.hasUserSaved) {
          CustomNavigator.goToWithClearStack(NavigationService.appNavigator.currentContext!, Pages.onboarding);
          return;
        }

        if (_coreController.userEntityLogged != null && _coreController.userEntityLogged!.logged) {
          CustomNavigator.goToWithClearStack(NavigationService.appNavigator.currentContext!, Pages.home);
        } else {
          CustomNavigator.goToWithClearStack(NavigationService.appNavigator.currentContext!, Pages.login);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withAppBar: false,
      namePage: '',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset('assets/logo.png'),
          ),
          LoadingIndicator(
            size: AppEnum.big,
            color: AppColors.primary,
            backgroundColor: AppColors.background,
          ),
        ],
      ),
    );
  }
}
