import 'package:flutter/material.dart';

class MyProviderLogin extends ChangeNotifier {
  TextEditingController _tfemail = TextEditingController();
  TextEditingController _tfpass = TextEditingController();
  TextEditingController get tfemail => _tfemail;
  TextEditingController get tfpass => _tfpass;
  TextEditingController get tfname => _tfpass;
  bool _isEmailEmpty = false;
  bool _isPassEmpty = false;
  bool get isEmailEmpty => _isEmailEmpty;
  bool get isPassEmpty => _isPassEmpty;
  bool get isBirthEmpty => _isPassEmpty;
  set setEmailEmpty(value) {
    _isEmailEmpty = value;
    notifyListeners();
  }

  set setPassEmpty(value) {
    _isEmailEmpty = value;
    notifyListeners();
  }
}
