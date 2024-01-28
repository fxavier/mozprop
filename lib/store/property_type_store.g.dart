// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_type_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PropertyTypeStore on _PropertyTypeStoreBase, Store {
  Computed<List<PropertyType>>? _$allPropertyTypesComputed;

  @override
  List<PropertyType> get allPropertyTypes => (_$allPropertyTypesComputed ??=
          Computed<List<PropertyType>>(() => super.allPropertyTypes,
              name: '_PropertyTypeStoreBase.allPropertyTypes'))
      .value;

  late final _$typeAtom =
      Atom(name: '_PropertyTypeStoreBase.type', context: context);

  @override
  String? get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String? value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  late final _$iconAtom =
      Atom(name: '_PropertyTypeStoreBase.icon', context: context);

  @override
  String? get icon {
    _$iconAtom.reportRead();
    return super.icon;
  }

  @override
  set icon(String? value) {
    _$iconAtom.reportWrite(value, super.icon, () {
      super.icon = value;
    });
  }

  late final _$getAllPropertyTypesAsyncAction = AsyncAction(
      '_PropertyTypeStoreBase.getAllPropertyTypes',
      context: context);

  @override
  Future<void> getAllPropertyTypes() {
    return _$getAllPropertyTypesAsyncAction
        .run(() => super.getAllPropertyTypes());
  }

  late final _$_PropertyTypeStoreBaseActionController =
      ActionController(name: '_PropertyTypeStoreBase', context: context);

  @override
  void setType(String value) {
    final _$actionInfo = _$_PropertyTypeStoreBaseActionController.startAction(
        name: '_PropertyTypeStoreBase.setType');
    try {
      return super.setType(value);
    } finally {
      _$_PropertyTypeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIcon(String value) {
    final _$actionInfo = _$_PropertyTypeStoreBaseActionController.startAction(
        name: '_PropertyTypeStoreBase.setIcon');
    try {
      return super.setIcon(value);
    } finally {
      _$_PropertyTypeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPropertyTypes(List<PropertyType> value) {
    final _$actionInfo = _$_PropertyTypeStoreBaseActionController.startAction(
        name: '_PropertyTypeStoreBase.setPropertyTypes');
    try {
      return super.setPropertyTypes(value);
    } finally {
      _$_PropertyTypeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
type: ${type},
icon: ${icon},
allPropertyTypes: ${allPropertyTypes}
    ''';
  }
}
