// ignore_for_file: unused_import, null_argument_to_non_null_type

import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

  //因为返回了null，所以这里定义为Void？
  Future<Void?> init() async {
    //初始化
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    //设置功能
    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);

    //初始化监听
    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    });

    return null;
  }
}
