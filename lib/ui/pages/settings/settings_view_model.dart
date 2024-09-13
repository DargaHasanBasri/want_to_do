import 'package:want_to_do/base/base_view_model.dart';

class SettingsViewModel extends BaseViewModel {
  String _selectedLanguage = 'English';

  void changeLanguage(String newLanguage) {
    _selectedLanguage = newLanguage;
    notifyListeners();
  }

  String get selectedLanguage => _selectedLanguage;

}
