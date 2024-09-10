import 'package:want_to_do/base/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  String _usernameText = '';
  String _passwordText = '';

  set usernameText(String value) {
    _usernameText = value;
    notifyListeners();
  }

  String get usernameText => _usernameText;

  set passwordText(String value) {
    _passwordText = value;
    notifyListeners();
  }

  String get passwordText => _passwordText;

  bool buttonIsActive() {
    if (_usernameText.length >= 3 && _passwordText.length >= 6) {
      return true;
    } else {
      return false;
    }
  }
}
