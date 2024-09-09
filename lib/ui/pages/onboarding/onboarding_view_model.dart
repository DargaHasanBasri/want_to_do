import 'package:want_to_do/base/base_view_model.dart';

class OnboardingViewModel extends BaseViewModel {
  int _currentPage = 0;

  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  int get currentPage => _currentPage;
}
