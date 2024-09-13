import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';
import 'package:want_to_do/ui/pages/settings/components/settings_item.dart';
import 'package:want_to_do/ui/widgets/custom_popup.dart';
import 'package:want_to_do/ui/widgets/custom_radio_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends BaseStatefulState<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.pagePaddingHorizontal,
          child: _buildBody(),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      forceMaterialTransparency: true,
      title: Text(
        LocaleKeys.settings.locale,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.white.withOpacity(0.87),
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Image.asset(
          'assets/images/ic_arrow_back_left.png',
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          LocaleKeys.settings.locale,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.silverChalice,
          ),
        ),
        SizedBox(height: 8),
        SettingsItem(
          itemTitle: LocaleKeys.appSettings_changeColor.locale,
          iconName: 'ic_brush',
          onTap: () {},
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: SettingsItem(
            itemTitle: LocaleKeys.appSettings_import.locale,
            iconName: 'ic_text',
            onTap: () {},
          ),
        ),
        SettingsItem(
          itemTitle: LocaleKeys.appSettings_changeLanguage.locale,
          iconName: 'ic_language_square',
          onTap: () {
            showPopupDialog(
              context: context,
              child: CustomPopup(
                child: (BuildContext context) {
                  return _buildPopupChild();
                },
              ),
            );
          },
        ),
        SizedBox(height: 8),
        Text(
          LocaleKeys.appSettings_import.locale,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.silverChalice,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: SettingsItem(
            itemTitle: LocaleKeys.appSettings_importGoogleCalendar.locale,
            iconName: 'ic_import',
            onTap: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildPopupChild() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Change Language',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: 2,
            color: AppColors.mountainMist,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            'Please Select a Language',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Consumer<SettingsViewModel>(
          builder: (context, vm, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomRadioButton(
                    title: 'English',
                    value: 'English',
                    groupValue: vm.selectedLanguage,
                    onChanged: (String? value) {
                      vm.changeLanguage(value!);
                    },
                  ),
                  CustomRadioButton(
                    title: 'Türkçe',
                    value: 'Türkçe',
                    groupValue: vm.selectedLanguage,
                    onChanged: (String? value) {
                      vm.changeLanguage(value!);
                    },
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: CustomButton(
            title: 'Okey',
            backgroundColor: AppColors.lavenderBlue,
            titleColor: AppColors.white,
            onClick: () {},
          ),
        ),
      ],
    );
  }
}
