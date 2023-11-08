import 'package:pets/infra/db/get_database.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/shared/features/app/data/models/user_model.dart';
import 'package:pets/shared/features/app/domain/repositories/get_logged_user_repository.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

class GetLoggedUserRepositoryImpl implements GetLoggedUserRepository {
  @override
  Future<ResultWrapper<UserEntity>> call() async {
    try {
      var database = await GetDatabase.get();
      final userDAO = database.userDAO;
      UserModel? userModel = await userDAO.getLoggedUser();

      return ResultWrapper<UserEntity>(
        payload: userModel != null ? UserEntity.fromModel(userModel) : null,
      );
    } catch (e) {
      return ResultWrapper<UserEntity>(
        payload: null,
        message: e.toString().replaceFirst('Exception: ', ''),
      );
    }
  }
}
