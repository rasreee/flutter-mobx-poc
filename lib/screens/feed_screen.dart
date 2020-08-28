import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_poc/models/feed_view_model.dart';

class FeedScreen extends StatelessWidget {
  final FeedViewModel viewModel = FeedViewModel();
  FeedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Observer(
          builder: (_) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Account: ${viewModel.baseStore.account}'),
                    SizedBox(height: 12.0),
                    Text('# of Likes: ${viewModel.baseStore.numLikes}'),
                    SizedBox(height: 12.0),
                    RaisedButton(
                        onPressed: () {
                          viewModel.incrementLikes();
                        },
                        child: Text('LIKE'))
                  ])),
    );
  }
}
