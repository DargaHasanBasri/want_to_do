import 'package:easy_localization/easy_localization.dart';

extension StringLocalizationExt on String {
  String get locale => this.tr();
}