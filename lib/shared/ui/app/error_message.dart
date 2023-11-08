import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/buttons/button_default.dart';
import 'package:pets/shared/ui/dividers/custom_divider.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatefulWidget {
  const ErrorMessage({Key? key}) : super(key: key);

  @override
  State<ErrorMessage> createState() => _ErrorMessageState();
}

class _ErrorMessageState extends State<ErrorMessage> {
  // final appController = getIt<CoreController>();
  // final userController = getIt<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(.3),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .95,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Atenção',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4.0),
                const CustomDivider(),
                SizedBox(
                  height: 120.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8.0),
                      // Observer(
                      //   builder: (_) {
                      //     return Text(
                      //       appController.message,
                      //       textAlign: TextAlign.justify,
                      //       style: TextStyle(
                      //         color: AppColors.black,
                      //         fontSize: 14.0,
                      //       ),
                      //     );
                      //   },
                      // ),
                      const Spacer(),
                      ButtonDefault(
                        label: const Text('Ok'),
                        disabled: false,
                        rounded: true,
                        onTap: () {
                          // appController.setHasError(false);
                          // appController.setMessage('');
                        },
                      ),
                    ],
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
