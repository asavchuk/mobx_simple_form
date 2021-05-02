import 'package:mobx/mobx.dart';

part 'form_store.g.dart';

class FormStore = _FormStore with _$FormStore;

abstract class _FormStore with Store {
  final FormErrorState error = FormErrorState();

  @observable
  String _firstName = '';

  @observable
  String _lastName = '';

  String get firstName => _firstName;
  String get lastName => _lastName;

  @action
  void setFirstName(String value) {
    _firstName = value;
    validateFirstName(value);
  }

  @action
  void setLastName(String value) {
    _lastName = value;
  }

  @action
  void validateFirstName(String value) {
    error.firstName = _firstName.length < 3 ? 'Minimum 3 characters' : null;
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? firstName;

  @computed
  bool get hasErrors => firstName != null;
}
