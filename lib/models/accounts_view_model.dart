import 'package:mobx/mobx.dart';

import '../services/service_locator.dart';
import '../stores/base_store.dart';

part 'accounts_view_model.g.dart';

/// This class takes the observable state of the entire app
/// and implements its actions
class AccountsViewModel extends AccountsViewModelBase with _$AccountsViewModel {
  AccountsViewModel();
}

abstract class AccountsViewModelBase with Store {
  final BaseStore baseStore = getIt<BaseStore>();

  @action
  void updateAccount(String newAccount) {
    baseStore.account = newAccount;
  }
}