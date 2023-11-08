import 'package:pets/shared/features/app/data/models/user_model.dart';

class UserEntity {
  int? id = 0;
  String email;
  bool logged;

  UserEntity({
    this.id,
    required this.email,
    required this.logged,
  });

  factory UserEntity.fromModel(UserModel userModel) => UserEntity(
        id: userModel.id,
        email: userModel.email,
        logged: userModel.logged,
      );
}
