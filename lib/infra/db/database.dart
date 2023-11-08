import 'dart:async';

import 'package:floor/floor.dart';
import 'package:pets/shared/features/app/data/daos/user_dao.dart';
import 'package:pets/shared/features/app/data/models/user_model.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [
  UserModel,
])
abstract class AppDatabase extends FloorDatabase {
  UserDAO get userDAO;
}