import 'package:pets/features/login/domain/repositories/sign_in_user_repository.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

class SignInUserUseCase {
  Future<ResultWrapper<void>> call(UserEntity userEntity) async {
    try {
      SignInUserRepository signInUserRepository = getIt<SignInUserRepository>();
      return await signInUserRepository(userEntity);
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}