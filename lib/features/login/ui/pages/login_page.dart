import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pets/features/login/ui/controllers/login_controller.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/ui/controllers/core_controller.dart';
import 'package:pets/shared/ui/app/custom_scaffold.dart';
import 'package:pets/shared/ui/app/theme/app_colors.dart';
import 'package:pets/shared/ui/buttons/button_default.dart';
import 'package:pets/shared/ui/imputs/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  final LoginController _loginController = getIt<LoginController>();
  final CoreController _coreController = getIt<CoreController>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      withAppBar: false,
      withSafeArea: true,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 300.0,
                  width: 300.0,
                  fit: BoxFit.fill,
                ),
                CustomTextFormField(
                  label: 'E-mail',
                  hint: 'E-mail',
                  controller: _loginController.emailInputController,
                  textColor: AppColors.black,
                  fillColor: AppColors.black,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ButtonDefault(
                    label: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: AppColors.black,
                      ),
                    ),
                    disabled: false,
                    rounded: true,
                    onTap: () async {
                      FocusScope.of(context).unfocus();
                      await _loginController.saveUser();
                      await _loginController.signIn();
                      await _coreController.getUser();
                    },
                  ),
                ),
              ].animate(interval: 400.ms).fadeIn(duration: 1000.ms),
            ),
          ),
        ),
      ),
    );
  }
}
