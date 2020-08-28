import 'package:get_it/get_it.dart';

import '../stores/base_store.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  BaseStore baseStoreInstance = BaseStore();
  getIt.registerSingleton<BaseStore>(baseStoreInstance);
}
