import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

/// This class stores the observable state of the entire app
class BaseStore extends _BaseStore with _$BaseStore {
  BaseStore() : super();
}

abstract class _BaseStore with Store {
  _BaseStore();

  @observable
  int selectedIndex = 0;

  @observable
  String account = 'Person 1';

  @observable
  int numLikes = 0;
}
