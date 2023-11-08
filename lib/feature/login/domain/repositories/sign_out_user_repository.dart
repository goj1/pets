import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

abstract class SignOutUserRepository {
  Future<ResultWrapper<void>> call(UserEntity userEntity);
}