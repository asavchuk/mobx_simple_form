// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormStore on _FormStore, Store {
  final _$_firstNameAtom = Atom(name: '_FormStore._firstName');

  @override
  String get _firstName {
    _$_firstNameAtom.reportRead();
    return super._firstName;
  }

  @override
  set _firstName(String value) {
    _$_firstNameAtom.reportWrite(value, super._firstName, () {
      super._firstName = value;
    });
  }

  final _$_lastNameAtom = Atom(name: '_FormStore._lastName');

  @override
  String get _lastName {
    _$_lastNameAtom.reportRead();
    return super._lastName;
  }

  @override
  set _lastName(String value) {
    _$_lastNameAtom.reportWrite(value, super._lastName, () {
      super._lastName = value;
    });
  }

  final _$_FormStoreActionController = ActionController(name: '_FormStore');

  @override
  void setFirstName(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.setFirstName');
    try {
      return super.setFirstName(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String value) {
    final _$actionInfo = _$_FormStoreActionController.startAction(
        name: '_FormStore.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$_FormStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorState.hasErrors'))
          .value;

  final _$firstNameAtom = Atom(name: '_FormErrorState.firstName');

  @override
  String? get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String? value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
hasErrors: ${hasErrors}
    ''';
  }
}
