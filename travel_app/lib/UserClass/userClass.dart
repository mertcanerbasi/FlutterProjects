import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserClass with ChangeNotifier {
  TextEditingController textEditingController_user = TextEditingController();
  TextEditingController textEditingController_pass = TextEditingController();
  TextEditingController textEditingController_search = TextEditingController();
  String? user_name = '';
  String? user_mail = '';
  String? user_image = '';

  UserClass({this.user_image, this.user_mail, this.user_name});

  void SetName(String? user_name) async {
    this.user_name = user_name;
    notifyListeners();
  }

  void SetMail(String? user_mail) async {
    this.user_mail = user_mail;
    notifyListeners();
  }

  void SetImage(String? user_image) async {
    this.user_image = user_image;
    notifyListeners();
  }
}
