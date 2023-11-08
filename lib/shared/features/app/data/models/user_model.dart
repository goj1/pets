import 'package:floor/floor.dart';
import 'package:pets/shared/features/app/entities/user_entity.dart';

@Entity(tableName: 'users')
class UserModel {
  @primaryKey
  int? id = 1;

  @ColumnInfo(name: 'email')
  final String email;

  @ColumnInfo(name: 'logged')
  final bool logged;

  UserModel({
    this.id,
    required this.email,
    required this.logged,
  });

  factory UserModel.fromEntity(UserEntity userEntity) => UserModel(
        email: userEntity.email,
        logged: userEntity.logged,
      );
}
