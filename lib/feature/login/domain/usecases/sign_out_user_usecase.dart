import 'package:pets/feature/login/domain/repositories/sign_out_user_repository.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

class SignOutUserUseCase {
  Future<ResultWrapper<void>> call(UserEntity userEntity) async {
    try {
      SignOutUserRepository signOutUserRepository = getIt<SignOutUserRepository>();
      return await signOutUserRepository(userEntity);
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}