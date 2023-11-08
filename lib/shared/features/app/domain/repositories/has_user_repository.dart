import 'package:pets/infra/factories/http/result_wrapper.dart';

abstract class HasUserRepository {
  Future<ResultWrapper<bool>> call();
}