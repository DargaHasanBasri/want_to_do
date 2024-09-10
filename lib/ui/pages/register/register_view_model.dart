import 'package:want_to_do/base/base_view_model.dart';

class RegisterViewModel extends BaseViewModel {
  String _usernameText = '';
  String _passwordText = '';
  String _passwordConfirmText = '';

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

  set passwordConfirmText(String value) {
    _passwordConfirmText = value;
    notifyListeners();
  }

  String get passwordConfirmText => _passwordConfirmText;

  bool buttonIsActive() {
    if (_usernameText.length >= 3 &&
        _passwordText.length >= 6 &&
        _passwordConfirmText.length >= 6 &&
        _passwordText == _passwordConfirmText) {
      return true;
    } else {
      return false;
    }
  }
}
