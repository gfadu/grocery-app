import 'dart:async';

import '../../models/user.dart';
import '../../data/database_helper.dart';

class LoginRequest {
  DatabaseHelper con = new DatabaseHelper();

  Future<User?> getLogin(String username, String password) {
    var result = con.getLogin(username, password);
    return result;
  }
}
