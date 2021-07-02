import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payflow/MODULOS/home/home_page.dart';
import 'package:payflow/MODULOS/login/login_page..dart';

class AuthControlle {
  var _isAuthenticated = false;

  var _user;
  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthenticated = false;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
