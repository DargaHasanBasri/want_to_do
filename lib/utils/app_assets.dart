final class AppAssets {
  AppAssets._();
  static const _basePath = 'assets/images/';

  static String imgAppLogoPath = _imagePath('img_app_logo');
  static String imgCheckListPath = _imagePath('img_checklist');
  static String imgOnboardingFirstPath = _imagePath('img_onboarding_first');
  static String imgOnboardingSecondPath = _imagePath('img_onboarding_second');
  static String imgOnboardingThirdPath = _imagePath('img_onboarding_third');
  static String icActiveCalendarPath = _imagePath('ic_active_calendar');
  static String icActiveFocusPath = _imagePath('ic_active_focus');
  static String icActiveHomePath = _imagePath('ic_active_home');
  static String icActiveProfilePath = _imagePath('ic_active_profile');
  static String icArrowBackLeftPath = _imagePath('ic_arrow_back_left');
  static String icArrowBackRightPath = _imagePath('ic_arrow_back_right');
  static String icArrowDownPath = _imagePath('ic_arrow_down');
  static String icBrushPath = _imagePath('ic_brush');
  static String icCategoryHomePath = _imagePath('ic_category_home');
  static String icCategoryUniversityPath = _imagePath('ic_category_university');
  static String icCategoryWorkPath = _imagePath('ic_category_work');
  static String icFingerprintPath = _imagePath('ic_fingerprint');
  static String icFlagPath = _imagePath('ic_flag');
  static String icImportPath = _imagePath('ic_import');
  static String icInactiveCalendarPath = _imagePath('ic_inactive_calendar');
  static String icInactiveFocusPath = _imagePath('ic_inactive_focus');
  static String icInactiveHomePath = _imagePath('ic_inactive_home');
  static String icInactiveProfilePath = _imagePath('ic_inactive_profile');
  static String icLanguageSquarePath = _imagePath('ic_language_square');
  static String icLogoApplePath = _imagePath('ic_logo_apple');
  static String icLogoGooglePath = _imagePath('ic_logo_google');
  static String icPlusAddPath = _imagePath('ic_plus_add');
  static String icSearchPath = _imagePath('ic_search');
  static String icSendPath = _imagePath('ic_send');
  static String icSidebarMenuPath = _imagePath('ic_sidebar_menu');
  static String icTagPath = _imagePath('ic_tag');
  static String icTextPath = _imagePath('ic_text');
  static String icTimerPath = _imagePath('ic_timer');

  static String _imagePath(String fileName) => '$_basePath$fileName.png';
}
