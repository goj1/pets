// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'LoginControllerBase.isLoading', context: context);

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

  late final _$messageAtom =
      Atom(name: 'LoginControllerBase.message', context: context);

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

  late final _$pageAtom =
      Atom(name: 'LoginControllerBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$totalPagesAtom =
      Atom(name: 'LoginControllerBase.totalPages', context: context);

  @override
  int get totalPages {
    _$totalPagesAtom.reportRead();
    return super.totalPages;
  }

  @override
  set totalPages(int value) {
    _$totalPagesAtom.reportWrite(value, super.totalPages, () {
      super.totalPages = value;
    });
  }

  late final _$totalResultsAtom =
      Atom(name: 'LoginControllerBase.totalResults', context: context);

  @override
  int get totalResults {
    _$totalResultsAtom.reportRead();
    return super.totalResults;
  }

  @override
  set totalResults(int value) {
    _$totalResultsAtom.reportWrite(value, super.totalResults, () {
      super.totalResults = value;
    });
  }

  late final _$idMovieSelectedAtom =
      Atom(name: 'LoginControllerBase.idMovieSelected', context: context);

  @override
  int get idMovieSelected {
    _$idMovieSelectedAtom.reportRead();
    return super.idMovieSelected;
  }

  @override
  set idMovieSelected(int value) {
    _$idMovieSelectedAtom.reportWrite(value, super.idMovieSelected, () {
      super.idMovieSelected = value;
    });
  }

  late final _$certificationAtom =
      Atom(name: 'LoginControllerBase.certification', context: context);

  @override
  String get certification {
    _$certificationAtom.reportRead();
    return super.certification;
  }

  @override
  set certification(String value) {
    _$certificationAtom.reportWrite(value, super.certification, () {
      super.certification = value;
    });
  }

  late final _$saveUserAsyncAction =
      AsyncAction('LoginControllerBase.saveUser', context: context);

  @override
  Future saveUser() {
    return _$saveUserAsyncAction.run(() => super.saveUser());
  }

  late final _$signInAsyncAction =
      AsyncAction('LoginControllerBase.signIn', context: context);

  @override
  Future signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
message: ${message},
page: ${page},
totalPages: ${totalPages},
totalResults: ${totalResults},
idMovieSelected: ${idMovieSelected},
certification: ${certification}
    ''';
  }
}
