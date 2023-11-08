import 'package:pets/feature/login/domain/repositories/save_user_repository.dart';
import 'package:pets/infra/db/get_database.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

class SaveUserRepositoryImpl implements SaveUserRepository {
  @override
  Future<ResultWrapper<bool>> call(UserEntity userEntity) async {
    try {
      var database = await GetDatabase.get();
      final userDAO = database.userDAO;
      await userDAO.saveUser(userEntity.email, userEntity.logged);

      return ResultWrapper<bool>(
        payload: true,
      );
    } catch (e) {
      return ResultWrapper<bool>(
        payload: null,
        message: e.toString().replaceFirst('Exception: ', ''),
      );
    }
  }
}
