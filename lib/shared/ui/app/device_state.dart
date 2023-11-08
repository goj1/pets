import 'package:flutter/material.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';

class DeviceState extends StatelessWidget {
  const DeviceState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(
              Icons.wifi_off,
              size: 48.0,
              color: AppColors.primary,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Aparelho desconectado da internet.\n'
              'Seu aparelho será reconectado automaticamente quando houver internet.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
