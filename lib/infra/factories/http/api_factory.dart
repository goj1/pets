import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/shared/features/app/ui/controllers/core_controller.dart';
import 'package:pets/util/const/app.dart';
import 'package:pets/util/enums/pet_type_enum.dart';

abstract class Api {
  static CoreController coreController = getIt<CoreController>();

  static Map<String, String> getHeaders(PetTypeEnum petType) {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
      'x-api-key': getTokenByPetType(petType),
    };
  }

  static Uri getUri({required String env, required String action, String? param}) {
    return Uri.parse('$env$action${param ?? ''}');
  }

  static Future<Response> get({
    required String env,
    required String action,
    required PetTypeEnum petTypeEnum,
  }) async {
    try {
      coreController.setIsLoading(true);
      var response = await http.get(
        getUri(env: env, action: action),
        headers: getHeaders(petTypeEnum),
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw const FormatException('Houve falha na requisição.');
      }
    } on SocketException catch (_) {
      throw const SocketException('Houve falha ao tentar estabelecer conexão com o servidor.');
    } catch (_) {
      throw Exception('Houve falha ao tentar realizar a requisição HTTP. ${_.toString()}');
    } finally {
      coreController.setIsLoading(false);
    }
  }

  static Future<dynamic> post({
    required String env,
    required String action,
    required PetTypeEnum petTypeEnum,
    Object? body,
  }) async {
    try {
      coreController.setIsLoading(true);
      var response = await http.post(
        getUri(env: env, action: action),
        headers: getHeaders(petTypeEnum),
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw const FormatException('Houve falha ao tentar serializar LoadModel.');
      }
    } on SocketException catch (_) {
      throw const SocketException('Houve falha ao tentar estabelecer conexão com o servidor.');
    } catch (_) {
      throw Exception('Houve falha ao tentar realizar a requisição HTTP. ${_.toString()}');
    } finally {
      coreController.setIsLoading(false);
    }
  }

  static String getTokenByPetType(PetTypeEnum type) {
    switch (type) {
      case PetTypeEnum.cat:
        return Constants.apiTokenCat;
      case PetTypeEnum.dog:
        return Constants.apiTokenDog;
    }
  }
}
