import 'package:pets/infra/db/database.dart';

abstract class GetDatabase {
  static Future<AppDatabase> get() async {
    return await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  }
}