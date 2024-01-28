import 'package:mobx/mobx.dart';
import 'package:mozprop/model/models.dart';
import 'package:mozprop/repository/repository.dart';
part 'property_type_store.g.dart';

class PropertyTypeStore = _PropertyTypeStoreBase with _$PropertyTypeStore;

abstract class _PropertyTypeStoreBase with Store {
  @observable
  String? type;
  @observable
  String? icon;

  ObservableList<PropertyType> propertyTypes = ObservableList<PropertyType>();

  @action
  void setType(String value) => type = value;

  @action
  void setIcon(String value) => icon = value;

  @action
  void setPropertyTypes(List<PropertyType> value) =>
      propertyTypes = ObservableList.of(value);

  @action
  Future<void> getAllPropertyTypes() async {
    final propertyTypes = await PropertyTypeRepository().getAll();
    setPropertyTypes(propertyTypes);
  }

  @computed
  List<PropertyType> get allPropertyTypes => propertyTypes;
}
