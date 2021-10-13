import 'dart:async';

import 'package:grocery/models/user.dart';
import 'package:grocery/utils/network_util.dart';
import 'package:grocery/exception/login_exception.dart';
import 'package:grocery/data/database_helper.dart';
import 'package:grocery/models/user.dart';

class RestData{
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";
  //You can use this to login into a web service We are still working on it

  Future<User> login(String username, String password) {
    //expected success from web service
    return new Future.value(new User(username, password));
  }
  Future<User> register(String username, String password) {
    //expected success from web service
    return new Future.value(new User(username, password));
  }
}
