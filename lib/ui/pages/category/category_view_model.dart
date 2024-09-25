import 'package:want_to_do/base/base_view_model.dart';
import 'package:want_to_do/export.dart';

class CategoryViewModel extends BaseViewModel {
  /// TODO: It will then be pulled from the backend
  List<Color> customColors = [
    AppColors.juneBud,
    AppColors.appleGreen,
    AppColors.jellyfish,
    AppColors.tuftsBlue,
    AppColors.celestialBlue,
    AppColors.tigerOrange,
    AppColors.darkOrchid,
    AppColors.deepRose,
    AppColors.balticSea,
  ];

  int _categoryNameLength = 0;

  int get categoryNameLength => _categoryNameLength;

  set categoryNameLength(int length) {
    _categoryNameLength = length;
    notifyListeners();
  }

  /// category name character limit control
  bool isLimitExcceed(int characterLimit) {
    /// returns true if the entered category name is greater than or equal to the given characterLimit value
    if (_categoryNameLength > characterLimit || _categoryNameLength == 0)
      return true;

    /// otherwise, the given limit is not exceeded and returns false
    return false;
  }
}
