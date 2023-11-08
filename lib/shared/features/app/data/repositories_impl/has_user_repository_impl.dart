import 'package:pets/infra/db/get_database.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/shared/features/app/domain/repositories/has_user_repository.dart';

class HasUserRepositoryImpl implements HasUserRepository {
  @override
  Future<ResultWrapper<bool>> call() async {
    try {
      var database = await GetDatabase.get();
      final userDAO = database.userDAO;
      int? users = await userDAO.hasUser();

      return ResultWrapper<bool>(
        payload: users != null && users > 0 ? true : false,
      );
    } catch (e) {
      return ResultWrapper<bool>(
        payload: null,
        message: e.toString().replaceFirst('Exception: ', ''),
      );
    }
  }
}
