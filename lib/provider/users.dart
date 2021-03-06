import 'dart:math';

import 'package:crud/data/dummy_users.dart';
import 'package:crud/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(user.id, (value) => user);
    }

    final id = Random().nextDouble().toString();

    _items.putIfAbsent(
        id,
        () => User(
              id: id,
              name: 'Teste',
              email: 'teste@teste.com',
              avatarUrl: '',
            ));
    //add ou

    //alterar

    notifyListeners();
  }
}
