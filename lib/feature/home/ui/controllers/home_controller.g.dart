// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$isLoadingCatsAtom =
      Atom(name: 'HomeControllerBase.isLoadingCats', context: context);

  @override
  bool get isLoadingCats {
    _$isLoadingCatsAtom.reportRead();
    return super.isLoadingCats;
  }

  @override
  set isLoadingCats(bool value) {
    _$isLoadingCatsAtom.reportWrite(value, super.isLoadingCats, () {
      super.isLoadingCats = value;
    });
  }

  late final _$isLoadingDogsAtom =
      Atom(name: 'HomeControllerBase.isLoadingDogs', context: context);

  @override
  bool get isLoadingDogs {
    _$isLoadingDogsAtom.reportRead();
    return super.isLoadingDogs;
  }

  @override
  set isLoadingDogs(bool value) {
    _$isLoadingDogsAtom.reportWrite(value, super.isLoadingDogs, () {
      super.isLoadingDogs = value;
    });
  }

  late final _$catsAtom =
      Atom(name: 'HomeControllerBase.cats', context: context);

  @override
  ObservableList<PetEntity> get cats {
    _$catsAtom.reportRead();
    return super.cats;
  }

  @override
  set cats(ObservableList<PetEntity> value) {
    _$catsAtom.reportWrite(value, super.cats, () {
      super.cats = value;
    });
  }

  late final _$dogsAtom =
      Atom(name: 'HomeControllerBase.dogs', context: context);

  @override
  ObservableList<PetEntity> get dogs {
    _$dogsAtom.reportRead();
    return super.dogs;
  }

  @override
  set dogs(ObservableList<PetEntity> value) {
    _$dogsAtom.reportWrite(value, super.dogs, () {
      super.dogs = value;
    });
  }

  late final _$limitAtom =
      Atom(name: 'HomeControllerBase.limit', context: context);

  @override
  int get limit {
    _$limitAtom.reportRead();
    return super.limit;
  }

  @override
  set limit(int value) {
    _$limitAtom.reportWrite(value, super.limit, () {
      super.limit = value;
    });
  }

  late final _$pageDogsAtom =
      Atom(name: 'HomeControllerBase.pageDogs', context: context);

  @override
  int get pageDogs {
    _$pageDogsAtom.reportRead();
    return super.pageDogs;
  }

  @override
  set pageDogs(int value) {
    _$pageDogsAtom.reportWrite(value, super.pageDogs, () {
      super.pageDogs = value;
    });
  }

  late final _$pageCatsAtom =
      Atom(name: 'HomeControllerBase.pageCats', context: context);

  @override
  int get pageCats {
    _$pageCatsAtom.reportRead();
    return super.pageCats;
  }

  @override
  set pageCats(int value) {
    _$pageCatsAtom.reportWrite(value, super.pageCats, () {
      super.pageCats = value;
    });
  }

  late final _$loadDataAsyncAction =
      AsyncAction('HomeControllerBase.loadData', context: context);

  @override
  Future loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  late final _$getCatsAsyncAction =
      AsyncAction('HomeControllerBase.getCats', context: context);

  @override
  Future getCats() {
    return _$getCatsAsyncAction.run(() => super.getCats());
  }

  late final _$getDogsAsyncAction =
      AsyncAction('HomeControllerBase.getDogs', context: context);

  @override
  Future getDogs() {
    return _$getDogsAsyncAction.run(() => super.getDogs());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic plusPageCats() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.plusPageCats');
    try {
      return super.plusPageCats();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic plusPageDogs() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.plusPageDogs');
    try {
      return super.plusPageDogs();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingCats: ${isLoadingCats},
isLoadingDogs: ${isLoadingDogs},
cats: ${cats},
dogs: ${dogs},
limit: ${limit},
pageDogs: ${pageDogs},
pageCats: ${pageCats}
    ''';
  }
}
