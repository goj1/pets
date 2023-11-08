import 'package:floor/floor.dart';
import 'package:pets/shared/features/app/data/models/user_model.dart';

@dao
abstract class UserDAO {
  @Query('SELECT * FROM users WHERE logged = true LIMIT 1')
  Future<UserModel?> getLoggedUser();

  @Query('SELECT count(*) FROM users')
  Future<int?> hasUser();

  @Query('INSERT OR REPLACE INTO users(email, logged) VALUES(:email, :logged)')
  Future<void> saveUser(String email, bool logged);

  @Query('UPDATE users SET logged = :logged WHERE email = :email')
  Future<void> updateUser(String email, bool logged);
}