import 'package:mobx/mobx.dart';
import 'package:pets/feature/login/domain/usecases/sign_out_user_usecase.dart';
import 'package:pets/shared/features/app/domain/usecases/get_logged_user_usecase.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/domain/usecases/has_user_usecase.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';
import 'package:pets/shared/ui/snackbar/custom_snackbar.dart';

part 'core_controller.g.dart';

class CoreController = CoreControllerBase with _$CoreController;

abstract class CoreControllerBase with Store {
  @observable
  bool isLoading = false;

  @observable
  bool hasInternetConnection = true;

  @observable
  String message = '';

  @observable
  bool isSuccess = false;

  @observable
  PetEntity? petEntitySelected;

  @observable
  UserEntity? userEntityLogged;

  @observable
  bool hasUserSaved = false;

  @action
  void setIsLoading(bool value) {
    isLoading = value;
  }

  @action
  void sethasInternetConnection(bool value) {
    isLoading = value;
  }

  @action
  setPetSelected(PetEntity petSelected) async {
    petEntitySelected = petSelected;
  }

  @action
  loadData() async {
    await hasUser();
    await getUser();
  }

  @action
  getUser() async {
    var result = getIt<GetLoggedUserUseCase>();
    ResultWrapper<UserEntity> resultWrapper = await result();

    if (resultWrapper.isSuccess) {
      userEntityLogged = resultWrapper.data!;
    }
  }

  @action
  hasUser() async {
    var result = getIt<HasUserUseCase>();
    ResultWrapper<bool> resultWrapper = await result();

    if (resultWrapper.isSuccess) {
      hasUserSaved = resultWrapper.data!;
    }
  }

  @action
  signOut() async {
    var result = getIt<SignOutUserUseCase>();
    ResultWrapper<void> resultWrapper = await result(userEntityLogged!);

    if (resultWrapper.isSuccess) {
      userEntityLogged = null;
      CustomSnackBar.showSnackBar('Logout realizado com sucesso!');
    }
  }
}
