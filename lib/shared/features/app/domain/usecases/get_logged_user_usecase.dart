import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/domain/repositories/get_logged_user_repository.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

class GetLoggedUserUseCase {
  Future<ResultWrapper<UserEntity>> call() async {
    try {
      GetLoggedUserRepository getLoggedUserRepository = getIt<GetLoggedUserRepository>();
      return await getLoggedUserRepository();
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}