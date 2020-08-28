import 'package:flutter/material.dart';
import 'package:mobx_poc/models/base_view_model.dart';

import 'accounts_screen.dart';
import 'feed_screen.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BaseScreen extends StatelessWidget {
  final BaseViewModel viewModel = BaseViewModel();
  BaseScreen({Key key}) : super(key: key);

  List<Widget> _screenOptions = <Widget>[
    FeedScreen(),
    AccountsScreen()
  ];

  void _onItemTapped(int index) {
    viewModel.updateSelectedIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Scaffold(
              body: Center(
                child: _screenOptions.elementAt(viewModel.baseStore.selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: viewModel.baseStore.selectedIndex,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.rss_feed), title: Text('Feed')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.people), title: Text('Accounts')),
                ],
                onTap: _onItemTapped,
              ),
            ));
  }
}
