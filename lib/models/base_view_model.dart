import 'package:mobx/mobx.dart';

import '../services/service_locator.dart';
import '../stores/base_store.dart';

part 'base_view_model.g.dart';

/// This class takes the observable state of the entire app
/// and implements its actions
class BaseViewModel extends BaseViewModelBase with _$BaseViewModel {
  BaseViewModel();
}

abstract class BaseViewModelBase with Store {
  final BaseStore baseStore = getIt<BaseStore>();

  @action
  void updateSelectedIndex(int selectedIndex) {
    baseStore.selectedIndex = selectedIndex;
  }
}