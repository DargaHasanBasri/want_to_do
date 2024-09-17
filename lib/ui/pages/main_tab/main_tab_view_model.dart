import 'package:flutter/material.dart';
import 'package:want_to_do/base/base_view_model.dart';

class MainTabViewModel extends BaseViewModel {
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();

  int _currentIndex = 0;

  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  int get currentIndex => _currentIndex;

  String _taskTitleText = '';
  String _taskDescriptionText = '';

  set taskTitleText(String text) {
    _taskTitleText = text;
    notifyListeners();
  }

  String get taskTitleText => _taskTitleText;

  set taskDescriptionText(String text) {
    _taskDescriptionText = text;
    notifyListeners();
  }

  String get taskDescriptionText => _taskDescriptionText;

  bool checkTaskParameters() {
    _taskTitleText = taskTitleController.text;
    _taskDescriptionText = taskDescriptionController.text;
    if (_taskTitleText.isNotEmpty && _taskDescriptionText.isNotEmpty)
      return true;
    return false;
  }
}
