import 'dart:convert';

import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/feature/home/data/datasource/get_cats_datasource.dart';
import 'package:pets/feature/home/domain/repositories/get_cats_repository.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';

class GetCatsRepositoryImpl implements GetCatsRepository {
  @override
  Future<ResultWrapper<List<PetEntity>>> call(int limit, int page) async {
    try {
      GetCatsDataSource getCatsDataSource = getIt<GetCatsDataSource>();
      var result = await getCatsDataSource.getCats(limit, page);
      List<dynamic> cast = jsonDecode(result.body);
      List<PetEntity> cats = cast.map((element) => PetEntity.fromJson(element)).toList();

      return ResultWrapper<List<PetEntity>>(
        payload: cats,
      );
    } catch (e) {
      return ResultWrapper<List<PetEntity>>(
        payload: null,
        message: e.toString().replaceFirst('Exception: ', ''),
      );
    }
  }
}
