import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:beldr/Design/shared/globals.dart';

class LoginModel extends ChangeNotifier {
  get isVisible => _isVisible;
  bool _isVisible = false;
  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;
  bool _isValid = false;
  void isValidEmail(String input) {
    if (input == Global.validEmail.first) {
      _isValid = true;
    } else {
      _isValid = false;
    }
    notifyListeners();
  }

  get isConfirm => _isConfirm;
  bool _isConfirm = false;
  void isConfirmMatch(String input1,String input2) {
    if (input1 == input2) {
      _isConfirm = true;
    } else {
      _isConfirm = false;
    }
    notifyListeners();
  }
}
