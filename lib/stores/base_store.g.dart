// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseStore on _BaseStore, Store {
  final _$selectedIndexAtom = Atom(name: '_BaseStore.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$accountAtom = Atom(name: '_BaseStore.account');

  @override
  String get account {
    _$accountAtom.reportRead();
    return super.account;
  }

  @override
  set account(String value) {
    _$accountAtom.reportWrite(value, super.account, () {
      super.account = value;
    });
  }

  final _$numLikesAtom = Atom(name: '_BaseStore.numLikes');

  @override
  int get numLikes {
    _$numLikesAtom.reportRead();
    return super.numLikes;
  }

  @override
  set numLikes(int value) {
    _$numLikesAtom.reportWrite(value, super.numLikes, () {
      super.numLikes = value;
    });
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
account: ${account},
numLikes: ${numLikes}
    ''';
  }
}
