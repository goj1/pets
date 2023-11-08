import 'package:pets/infra/factories/navigation/custom_navigator.dart';
import 'package:pets/infra/factories/navigation/navigation_service.dart';
import 'package:pets/infra/factories/navigation/pages.dart';
import 'package:pets/shared/ui/buttons/button_default.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ServerState extends StatelessWidget {
  const ServerState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Icon(
              LineAwesomeIcons.server,
              size: 48.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'O servidor está offline. \n Tente novamente mais tarde.',
              textAlign: TextAlign.center,
            ),
          ),
          ButtonDefault(
            label: const Text('Tentar novamente'),
            disabled: false,
            rounded: true,
            onTap: () async {
              CustomNavigator.goToWithClearStack(NavigationService.appNavigator.currentContext!, Pages.load);
            },
          )
        ],
      ),
    );
  }
}
