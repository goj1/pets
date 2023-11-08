import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pets/feature/login/domain/usecases/save_user_usecase.dart';
import 'package:pets/feature/login/domain/usecases/sign_in_user_usecase.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/factories/navigation/custom_navigator.dart';
import 'package:pets/infra/factories/navigation/navigation_service.dart';
import 'package:pets/infra/factories/navigation/pages.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';
import 'package:pets/shared/ui/snackbar/custom_snackbar.dart';
import 'package:pets/util/const/users.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final GlobalKey formKey = GlobalKey<FormState>();
  FocusNode focusSearchInput = FocusNode();
  TextEditingController emailInputController = TextEditingController();

  @observable
  bool isLoading = false;

  @observable
  String message = '';

  @observable
  int page = 0;

  @observable
  int totalPages = 0;

  @observable
  int totalResults = 0;

  @observable
  int idMovieSelected = 0;

  @observable
  String certification = '';

  @action
  saveUser() async {
    var result = getIt<SaveUserUseCase>();
    await result(UserEntity(email: emailInputController.text, logged: false));
  }

  @action
  signIn() async {
    var result = getIt<SignInUserUseCase>();
    String email = emailInputController.text;

    if (Users.users.contains(email)) {
      ResultWrapper<void> resultWrapper = await result(UserEntity(email: email, logged: true));
      if (resultWrapper.isSuccess) {
        CustomSnackBar.showSnackBar('Login realizado com sucesso!');
        CustomNavigator.goToWithClearStack(NavigationService.appNavigator.currentContext!, Pages.home);
        emailInputController.clear();
      }
    } else {
      CustomSnackBar.showSnackBar('E-mail não cadastrado!');
    }
  }
}
