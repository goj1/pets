import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';

abstract class GetDogsRepository {
  Future<ResultWrapper<List<PetEntity>>> call(int limit, int page);
}