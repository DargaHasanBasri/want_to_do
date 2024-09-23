import 'package:want_to_do/base/base_view_model.dart';
import 'package:want_to_do/export.dart';
import 'package:want_to_do/models/category_model/category_model.dart';

class MainTabViewModel extends BaseViewModel {
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  int _selectedPriority = 1;

  int get selectedPriority => _selectedPriority;

  set selectedPriority(int value) {
    _selectedPriority = value;
    print("Priority changed: $value");
    notifyListeners();
  }

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

  /// TODO: Static for now since there is no backend
  /// TODO: will then connect with the backend
  List<CategoryModel> categories = [
    CategoryModel(
        icon: AppAssets.icCategoryUniversityPath, label: 'University'),
    CategoryModel(icon: AppAssets.icCategoryHomePath, label: 'Home'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(
        icon: AppAssets.icCategoryUniversityPath, label: 'University'),
    CategoryModel(icon: AppAssets.icCategoryHomePath, label: 'Home'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(
        icon: AppAssets.icCategoryUniversityPath, label: 'University'),
    CategoryModel(icon: AppAssets.icCategoryHomePath, label: 'Home'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(
        icon: AppAssets.icCategoryUniversityPath, label: 'University'),
    CategoryModel(icon: AppAssets.icCategoryHomePath, label: 'Home'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(
        icon: AppAssets.icCategoryUniversityPath, label: 'University'),
    CategoryModel(icon: AppAssets.icCategoryHomePath, label: 'Home'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(icon: AppAssets.icCategoryWorkPath, label: 'Work'),
    CategoryModel(
        icon: AppAssets.icCategoryUniversityPath, label: 'University'),
    CategoryModel(icon: AppAssets.icCategoryHomePath, label: 'Home'),
  ];
}
