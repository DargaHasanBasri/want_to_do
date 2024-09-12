import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:want_to_do/base/base_view_model.dart';

class SettingsViewModel extends BaseViewModel {
  bool _isSelect = false;

  set isSelect(bool value) {
    _isSelect = value;
    notifyListeners();
  }

  bool get isSelect => _isSelect;
}
