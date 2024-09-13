import 'package:want_to_do/base/base_view_model.dart';

class MainTabViewModel extends BaseViewModel {
  int _currentIndex = 0;

  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  int get currentIndex => _currentIndex;
}
