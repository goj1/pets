import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/domain/repositories/has_user_repository.dart';

class HasUserUseCase {
  Future<ResultWrapper<bool>> call() async {
    try {
      HasUserRepository hasUserRepository = getIt<HasUserRepository>();
      return await hasUserRepository();
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}