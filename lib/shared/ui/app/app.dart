import 'package:pets/infra/factories/navigation/custom_material_page_route.dart';
import 'package:pets/infra/factories/navigation/navigation_service.dart';
import 'package:pets/infra/factories/navigation/navigator_pages.dart';
import 'package:pets/infra/factories/navigation/pages.dart';
import 'package:pets/shared/ui/app/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // final appController = getIt<CoreController>();
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.appTheme,
      darkTheme: CustomTheme.appDarkTheme,
      debugShowCheckedModeBanner: false,
      home: Navigator(
        key: NavigationService.appNavigator,
        onGenerateRoute: (settings) {
          Widget? page;
          String pageName = settings.name!;

          try {
            if (pageName == Pages.root) {
              page = NavigatorPages.getPage(Pages.load);
            } else {
              page = NavigatorPages.getPage(pageName);
            }
          } catch (err) {
            throw Exception('Rota desconhecida: ${settings.name}');
          }

          return CustomMaterialPageRoute(
            builder: (context) {
              return page!;
            },
            settings: settings,
          );
        },
      ),
    );
  }
}