import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_poc/models/accounts_view_model.dart';

class AccountsScreen extends StatelessWidget {
  final AccountsViewModel viewModel = AccountsViewModel();
  AccountsScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => DropdownButton<String>(
        value: viewModel.baseStore.account,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          viewModel.updateAccount(newValue);
        },
        items: <String>['Person 1', 'Person 2', 'Person 3', 'Person 4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      )
    );
  }
}