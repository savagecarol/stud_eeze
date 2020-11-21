// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..className = json['className'] as String
    ..contactNumber = json['contactNumber'] as String
    ..email = json['email'] as String
    ..image = json['image'] as String
    ..iname = json['iname'] as String
    ..name = json['name'] as String
    ..role = json['role'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'className': instance.className,
      'contactNumber': instance.contactNumber,
      'email': instance.email,
      'image': instance.image,
      'iname': instance.iname,
      'name': instance.name,
      'role': instance.role,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$User on _User, Store {
  final _$classNameAtom = Atom(name: '_User.className');

  @override
  String get className {
    _$classNameAtom.context.enforceReadPolicy(_$classNameAtom);
    _$classNameAtom.reportObserved();
    return super.className;
  }

  @override
  set className(String value) {
    _$classNameAtom.context.conditionallyRunInAction(() {
      super.className = value;
      _$classNameAtom.reportChanged();
    }, _$classNameAtom, name: '${_$classNameAtom.name}_set');
  }

  final _$contactNumberAtom = Atom(name: '_User.contactNumber');

  @override
  String get contactNumber {
    _$contactNumberAtom.context.enforceReadPolicy(_$contactNumberAtom);
    _$contactNumberAtom.reportObserved();
    return super.contactNumber;
  }

  @override
  set contactNumber(String value) {
    _$contactNumberAtom.context.conditionallyRunInAction(() {
      super.contactNumber = value;
      _$contactNumberAtom.reportChanged();
    }, _$contactNumberAtom, name: '${_$contactNumberAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_User.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$imageAtom = Atom(name: '_User.image');

  @override
  String get image {
    _$imageAtom.context.enforceReadPolicy(_$imageAtom);
    _$imageAtom.reportObserved();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.context.conditionallyRunInAction(() {
      super.image = value;
      _$imageAtom.reportChanged();
    }, _$imageAtom, name: '${_$imageAtom.name}_set');
  }

  final _$inameAtom = Atom(name: '_User.iname');

  @override
  String get iname {
    _$inameAtom.context.enforceReadPolicy(_$inameAtom);
    _$inameAtom.reportObserved();
    return super.iname;
  }

  @override
  set iname(String value) {
    _$inameAtom.context.conditionallyRunInAction(() {
      super.iname = value;
      _$inameAtom.reportChanged();
    }, _$inameAtom, name: '${_$inameAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_User.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$roleAtom = Atom(name: '_User.role');

  @override
  String get role {
    _$roleAtom.context.enforceReadPolicy(_$roleAtom);
    _$roleAtom.reportObserved();
    return super.role;
  }

  @override
  set role(String value) {
    _$roleAtom.context.conditionallyRunInAction(() {
      super.role = value;
      _$roleAtom.reportChanged();
    }, _$roleAtom, name: '${_$roleAtom.name}_set');
  }
}
