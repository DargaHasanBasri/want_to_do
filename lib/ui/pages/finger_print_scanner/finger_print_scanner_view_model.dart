import 'package:want_to_do/base/base_view_model.dart';

class FingerPrintScannerViewModel extends BaseViewModel {
  String _passwordText = '';

  set passwordText(String value) {
    _passwordText = value;
    notifyListeners();
  }

  String get passwordText => _passwordText;

  bool buttonIsActive() {
    if (_passwordText.length >= 6) {
      return true;
    } else {
      return false;
    }
  }
}
