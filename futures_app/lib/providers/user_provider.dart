import 'package:flutter/material.dart';

import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  UserProvider() {
    _fetchUser();
  }
  User? _user;
  User? get user => _user;

  Future<User> fetchUser() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return User(
          name: 'Orket',
          age: 24,
          nationality: 'Kenyan',
          phoneNumber: '+254740492617');
    });
  }

  void _fetchUser() async {
    User user = await fetchUser();
    _user = user;
    notifyListeners();
  }
}
