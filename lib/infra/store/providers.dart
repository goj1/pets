import 'package:get_it/get_it.dart';
import 'package:pets/feature/home/ui/controllers/home_controller.dart';
import 'package:pets/feature/login/data/repository_impl/save_user_repository_impl.dart';
import 'package:pets/feature/login/data/repository_impl/sign_in_user_repository_impl.dart';
import 'package:pets/feature/login/data/repository_impl/sign_out_user_repository_impl.dart';
import 'package:pets/feature/login/domain/repositories/save_user_repository.dart';
import 'package:pets/feature/login/domain/repositories/sign_in_user_repository.dart';
import 'package:pets/feature/login/domain/repositories/sign_out_user_repository.dart';
import 'package:pets/feature/login/domain/usecases/save_user_usecase.dart';
import 'package:pets/feature/login/domain/usecases/sign_in_user_usecase.dart';
import 'package:pets/feature/login/domain/usecases/sign_out_user_usecase.dart';
import 'package:pets/feature/login/ui/controllers/login_controller.dart';
import 'package:pets/feature/home/data/datasource/get_cats_datasource.dart';
import 'package:pets/feature/home/data/datasource/get_dogs_datasource.dart';
import 'package:pets/feature/home/data/repository_impl/get_cats_repository_impl.dart';
import 'package:pets/feature/home/data/repository_impl/get_dogs_repository_impl.dart';
import 'package:pets/feature/home/domain/repositories/get_cats_repository.dart';
import 'package:pets/feature/home/domain/repositories/get_dogs_repository.dart';
import 'package:pets/feature/home/domain/usecases/get_cats_usecase.dart';
import 'package:pets/feature/home/domain/usecases/get_dogs_usecase.dart';
import 'package:pets/shared/features/app/data/repositories_impl/get_logged_user_repository_impl.dart';
import 'package:pets/shared/features/app/data/repositories_impl/has_user_repository_impl.dart';
import 'package:pets/shared/features/app/domain/repositories/get_logged_user_repository.dart';
import 'package:pets/shared/features/app/domain/repositories/has_user_repository.dart';
import 'package:pets/shared/features/app/domain/usecases/get_logged_user_usecase.dart';
import 'package:pets/shared/features/app/domain/usecases/has_user_usecase.dart';
import 'package:pets/shared/features/app/ui/controllers/core_controller.dart';

final getIt = GetIt.instance;

void setupProviders() {
  getIt.registerSingleton<GetCatsDataSource>(GetCatsDataSource());
  getIt.registerSingleton<GetCatsRepository>(GetCatsRepositoryImpl());
  getIt.registerSingleton<GetCatsUseCase>(GetCatsUseCase());

  getIt.registerSingleton<GetDogsDataSource>(GetDogsDataSource());
  getIt.registerSingleton<GetDogsRepository>(GetDogsRepositoryImpl());
  getIt.registerSingleton<GetDogsUseCase>(GetDogsUseCase());

  getIt.registerSingleton<GetLoggedUserRepository>(GetLoggedUserRepositoryImpl());
  getIt.registerSingleton<GetLoggedUserUseCase>(GetLoggedUserUseCase());

  getIt.registerSingleton<HasUserRepository>(HasUserRepositoryImpl());
  getIt.registerSingleton<HasUserUseCase>(HasUserUseCase());

  getIt.registerSingleton<SaveUserRepository>(SaveUserRepositoryImpl());
  getIt.registerSingleton<SaveUserUseCase>(SaveUserUseCase());

  getIt.registerSingleton<SignInUserRepository>(SignInUserRepositoryImpl());
  getIt.registerSingleton<SignInUserUseCase>(SignInUserUseCase());

  getIt.registerSingleton<SignOutUserRepository>(SignOutUserRepositoryImpl());
  getIt.registerSingleton<SignOutUserUseCase>(SignOutUserUseCase());

  getIt.registerSingleton<CoreController>(CoreController());
  getIt.registerSingleton<HomeController>(HomeController());
  getIt.registerSingleton<LoginController>(LoginController());
}
