import 'package:mobx/mobx.dart';

import '../services/service_locator.dart';
import '../stores/base_store.dart';

part 'feed_view_model.g.dart';

/// This class takes the observable state of the entire app
/// and implements its actions
class FeedViewModel extends FeedViewModelBase with _$FeedViewModel {
  FeedViewModel();
}

abstract class FeedViewModelBase with Store {
  final BaseStore baseStore = getIt<BaseStore>();

  @action
  void incrementLikes() {
    baseStore.numLikes += 1;
  }
}