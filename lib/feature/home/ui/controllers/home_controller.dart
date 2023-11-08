import 'package:mobx/mobx.dart';
import 'package:pets/infra/factories/http/result_wrapper.dart';
import 'package:pets/infra/store/providers.dart';
import 'package:pets/feature/home/domain/usecases/get_cats_usecase.dart';
import 'package:pets/feature/home/domain/usecases/get_dogs_usecase.dart';
import 'package:pets/shared/features/app/entities/pet_entity.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  bool isLoadingCats = false;

  @observable
  bool isLoadingDogs = false;

  @observable
  ObservableList<PetEntity> cats = ObservableList<PetEntity>.of([]);

  @observable
  ObservableList<PetEntity> dogs = ObservableList<PetEntity>.of([]);

  @observable
  int limit = 20;

  @observable
  int pageDogs = 0;

  @observable
  int pageCats = 0;

  @action
  plusPageCats() {
    pageCats += 1;
  }

  @action
  plusPageDogs() {
    pageDogs += 1;
  }

  @action
  loadData() async {
    await getCats();
    await getDogs();
  }

  @action
  getCats() async {
    isLoadingCats = true;
    var result = getIt<GetCatsUseCase>();
    ResultWrapper<List<PetEntity>> resultWrapper = await result(limit, pageCats);

    if (resultWrapper.isSuccess) {
      cats.addAll(ObservableList<PetEntity>.of(resultWrapper.data!));
    }
    isLoadingCats = false;
  }

  @action
  getDogs() async {
    isLoadingDogs = true;
    var result = getIt<GetDogsUseCase>();
    ResultWrapper<List<PetEntity>> resultWrapper = await result(limit, pageDogs);

    if (resultWrapper.isSuccess) {
      dogs.addAll(ObservableList<PetEntity>.of(resultWrapper.data!));
    }
    isLoadingDogs = false;
  }
}
