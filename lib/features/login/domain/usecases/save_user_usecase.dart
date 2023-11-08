import 'package:pets/features/login/domain/repositories/save_user_repository.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

class SaveUserUseCase {
  Future<ResultWrapper<void>> call(UserEntity userEntity) async {
    try {
      SaveUserRepository hasUserRepository = getIt<SaveUserRepository>();
      return await hasUserRepository(userEntity);
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}