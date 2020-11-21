// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$isLoadingAtom = Atom(name: '_UserStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$isLoggedInAtom = Atom(name: '_UserStore.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.context.enforceReadPolicy(_$isLoggedInAtom);
    _$isLoggedInAtom.reportObserved();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.context.conditionallyRunInAction(() {
      super.isLoggedIn = value;
      _$isLoggedInAtom.reportChanged();
    }, _$isLoggedInAtom, name: '${_$isLoggedInAtom.name}_set');
  }

  final _$isCodeSentAtom = Atom(name: '_UserStore.isCodeSent');

  @override
  bool get isCodeSent {
    _$isCodeSentAtom.context.enforceReadPolicy(_$isCodeSentAtom);
    _$isCodeSentAtom.reportObserved();
    return super.isCodeSent;
  }

  @override
  set isCodeSent(bool value) {
    _$isCodeSentAtom.context.conditionallyRunInAction(() {
      super.isCodeSent = value;
      _$isCodeSentAtom.reportChanged();
    }, _$isCodeSentAtom, name: '${_$isCodeSentAtom.name}_set');
  }

  final _$isCodeAutoReceivedAtom = Atom(name: '_UserStore.isCodeAutoReceived');

  @override
  bool get isCodeAutoReceived {
    _$isCodeAutoReceivedAtom.context
        .enforceReadPolicy(_$isCodeAutoReceivedAtom);
    _$isCodeAutoReceivedAtom.reportObserved();
    return super.isCodeAutoReceived;
  }

  @override
  set isCodeAutoReceived(bool value) {
    _$isCodeAutoReceivedAtom.context.conditionallyRunInAction(() {
      super.isCodeAutoReceived = value;
      _$isCodeAutoReceivedAtom.reportChanged();
    }, _$isCodeAutoReceivedAtom, name: '${_$isCodeAutoReceivedAtom.name}_set');
  }

  final _$checkAtom = Atom(name: '_UserStore.check');

  @override
  bool get check {
    _$checkAtom.context.enforceReadPolicy(_$checkAtom);
    _$checkAtom.reportObserved();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.context.conditionallyRunInAction(() {
      super.check = value;
      _$checkAtom.reportChanged();
    }, _$checkAtom, name: '${_$checkAtom.name}_set');
  }

  final _$verfIdAtom = Atom(name: '_UserStore.verfId');

  @override
  String get verfId {
    _$verfIdAtom.context.enforceReadPolicy(_$verfIdAtom);
    _$verfIdAtom.reportObserved();
    return super.verfId;
  }

  @override
  set verfId(String value) {
    _$verfIdAtom.context.conditionallyRunInAction(() {
      super.verfId = value;
      _$verfIdAtom.reportChanged();
    }, _$verfIdAtom, name: '${_$verfIdAtom.name}_set');
  }

  final _$isCheckUserAtom = Atom(name: '_UserStore.isCheckUser');

  @override
  bool get isCheckUser {
    _$isCheckUserAtom.context.enforceReadPolicy(_$isCheckUserAtom);
    _$isCheckUserAtom.reportObserved();
    return super.isCheckUser;
  }

  @override
  set isCheckUser(bool value) {
    _$isCheckUserAtom.context.conditionallyRunInAction(() {
      super.isCheckUser = value;
      _$isCheckUserAtom.reportChanged();
    }, _$isCheckUserAtom, name: '${_$isCheckUserAtom.name}_set');
  }

  final _$isDataAtom = Atom(name: '_UserStore.isData');

  @override
  bool get isData {
    _$isDataAtom.context.enforceReadPolicy(_$isDataAtom);
    _$isDataAtom.reportObserved();
    return super.isData;
  }

  @override
  set isData(bool value) {
    _$isDataAtom.context.conditionallyRunInAction(() {
      super.isData = value;
      _$isDataAtom.reportChanged();
    }, _$isDataAtom, name: '${_$isDataAtom.name}_set');
  }

  final _$logInAsyncAction = AsyncAction('logIn');

  @override
  Future logIn() {
    return _$logInAsyncAction.run(() => super.logIn());
  }

  final _$checkingAsyncAction = AsyncAction('checking');

  @override
  Future checking() {
    return _$checkingAsyncAction.run(() => super.checking());
  }

  final _$logoutAsyncAction = AsyncAction('logout');

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }
}
