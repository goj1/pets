import 'dart:convert';

import 'package:pets/feature/home/data/datasource/get_dogs_datasource.dart';
import 'package:pets/feature/home/domain/repositories/get_dogs_repository.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';

class GetDogsRepositoryImpl implements GetDogsRepository {
  @override
  Future<ResultWrapper<List<PetEntity>>> call(int limit, int page) async {
    try {
      GetDogsDataSource getDogsDataSource = getIt<GetDogsDataSource>();
      var result = await getDogsDataSource.getDogs(limit, page);
      List<dynamic> cast = jsonDecode(result.body);
      List<PetEntity> dogs = cast.map((element) => PetEntity.fromJson(element)).toList();

      return ResultWrapper<List<PetEntity>>(
        payload: dogs,
      );
    } catch (e) {
      return ResultWrapper<List<PetEntity>>(
        payload: null,
        message: e.toString().replaceFirst('Exception: ', ''),
      );
    }
  }
}
