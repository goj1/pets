// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CoreController on CoreControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'CoreControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$hasInternetConnectionAtom =
      Atom(name: 'CoreControllerBase.hasInternetConnection', context: context);

  @override
  bool get hasInternetConnection {
    _$hasInternetConnectionAtom.reportRead();
    return super.hasInternetConnection;
  }

  @override
  set hasInternetConnection(bool value) {
    _$hasInternetConnectionAtom.reportWrite(value, super.hasInternetConnection,
        () {
      super.hasInternetConnection = value;
    });
  }

  late final _$messageAtom =
      Atom(name: 'CoreControllerBase.message', context: context);

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  late final _$isSuccessAtom =
      Atom(name: 'CoreControllerBase.isSuccess', context: context);

  @override
  bool get isSuccess {
    _$isSuccessAtom.reportRead();
    return super.isSuccess;
  }

  @override
  set isSuccess(bool value) {
    _$isSuccessAtom.reportWrite(value, super.isSuccess, () {
      super.isSuccess = value;
    });
  }

  late final _$petEntitySelectedAtom =
      Atom(name: 'CoreControllerBase.petEntitySelected', context: context);

  @override
  PetEntity? get petEntitySelected {
    _$petEntitySelectedAtom.reportRead();
    return super.petEntitySelected;
  }

  @override
  set petEntitySelected(PetEntity? value) {
    _$petEntitySelectedAtom.reportWrite(value, super.petEntitySelected, () {
      super.petEntitySelected = value;
    });
  }

  late final _$userEntityLoggedAtom =
      Atom(name: 'CoreControllerBase.userEntityLogged', context: context);

  @override
  UserEntity? get userEntityLogged {
    _$userEntityLoggedAtom.reportRead();
    return super.userEntityLogged;
  }

  @override
  set userEntityLogged(UserEntity? value) {
    _$userEntityLoggedAtom.reportWrite(value, super.userEntityLogged, () {
      super.userEntityLogged = value;
    });
  }

  late final _$hasUserSavedAtom =
      Atom(name: 'CoreControllerBase.hasUserSaved', context: context);

  @override
  bool get hasUserSaved {
    _$hasUserSavedAtom.reportRead();
    return super.hasUserSaved;
  }

  @override
  set hasUserSaved(bool value) {
    _$hasUserSavedAtom.reportWrite(value, super.hasUserSaved, () {
      super.hasUserSaved = value;
    });
  }

  late final _$setPetSelectedAsyncAction =
      AsyncAction('CoreControllerBase.setPetSelected', context: context);

  @override
  Future setPetSelected(PetEntity petSelected) {
    return _$setPetSelectedAsyncAction
        .run(() => super.setPetSelected(petSelected));
  }

  late final _$loadDataAsyncAction =
      AsyncAction('CoreControllerBase.loadData', context: context);

  @override
  Future loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  late final _$getUserAsyncAction =
      AsyncAction('CoreControllerBase.getUser', context: context);

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  late final _$hasUserAsyncAction =
      AsyncAction('CoreControllerBase.hasUser', context: context);

  @override
  Future hasUser() {
    return _$hasUserAsyncAction.run(() => super.hasUser());
  }

  late final _$signOutAsyncAction =
      AsyncAction('CoreControllerBase.signOut', context: context);

  @override
  Future signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  late final _$CoreControllerBaseActionController =
      ActionController(name: 'CoreControllerBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$CoreControllerBaseActionController.startAction(
        name: 'CoreControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$CoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sethasInternetConnection(bool value) {
    final _$actionInfo = _$CoreControllerBaseActionController.startAction(
        name: 'CoreControllerBase.sethasInternetConnection');
    try {
      return super.sethasInternetConnection(value);
    } finally {
      _$CoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
hasInternetConnection: ${hasInternetConnection},
message: ${message},
isSuccess: ${isSuccess},
petEntitySelected: ${petEntitySelected},
userEntityLogged: ${userEntityLogged},
hasUserSaved: ${hasUserSaved}
    ''';
  }
}
