import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/feature/home/domain/repositories/get_cats_repository.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';

class GetCatsUseCase {
  Future<ResultWrapper<List<PetEntity>>> call(int limit, int page) async {
    try {
      GetCatsRepository getCatsRepository = getIt<GetCatsRepository>();
      return await getCatsRepository(limit, page);
    } catch (e) {
      return ResultWrapper(
        message: e.toString(),
      );
    }
  }
}