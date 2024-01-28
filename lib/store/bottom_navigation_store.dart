import 'package:mobx/mobx.dart';
part 'bottom_navigation_store.g.dart';

class BottomNavigationStore = _BottomNavigationStoreBase
    with _$BottomNavigationStore;

abstract class _BottomNavigationStoreBase with Store {
  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int value) => currentIndex = value;
}
