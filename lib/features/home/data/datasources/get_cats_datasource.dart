import 'dart:io';

import 'package:http/http.dart';
import 'package:pets/infra/factories/http/api_factory.dart';
import 'package:pets/util/const/uris.dart';
import 'package:pets/util/enums/pet_type_enum.dart';

class GetCatsDataSource {
  Future<Response> getCats(int limit, int page) async {
    try {
      return await Api.get(
        env: Uris.baseCatUrl,
        action: '${Uris.getBreeds}?limit=$limit&page=$page',
        petTypeEnum: PetTypeEnum.cat,
      );
    } on SocketException {
      throw Exception('Houve falha no servidor.');
    } on HttpException {
      throw Exception('Houve falha na requisição.');
    } catch (_) {
      throw Exception('Não foi possível executar estação ação.');
    }
  }
}
