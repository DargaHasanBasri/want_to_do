import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BaseStatefulState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final _vm = context.watch<ProfileViewModel>();
    return SafeArea(
      child: Padding(
        padding: AppPaddings.pagePaddingHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: UserProfileInfo(),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    backgroundColor: AppColors.darkGrey,
                    title: '10 ${LocaleKeys.profile_taskLeft.locale}',
                    onClick: () {},
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomButton(
                    backgroundColor: AppColors.darkGrey,
                    title: '5 ${LocaleKeys.profile_taskDone.locale}',
                    onClick: () {},
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32, bottom: 4),
                      child: Text(
                        LocaleKeys.settings.locale,
                        style: TextStyle(
                          color: AppColors.silverChalice,
                        ),
                      ),
                    ),
                    ProfileItem(
                      itemTitle: LocaleKeys.appSettings_appSettings.locale,
                      iconAddress: AppAssets.icSettingsPath,
                      onTap: () {
                        appRoutes.navigateTo(Routes.Settings);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 4),
                      child: Text(
                        LocaleKeys.account.locale,
                        style: TextStyle(
                          color: AppColors.silverChalice,
                        ),
                      ),
                    ),
                    ProfileItem(
                      itemTitle: LocaleKeys.profile_changeAccountName.locale,
                      iconAddress: AppAssets.icUserPath,
                      onTap: () {
                        showPopupDialog(
                          context: context,
                          child: (context) {
                            return PopupChangeName(
                              newAccNameController: _vm.newAccNameController,
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 8),
                    ProfileItem(
                      itemTitle:
                          LocaleKeys.profile_changeAccountPassword.locale,
                      iconAddress: AppAssets.icKeyPath,
                      onTap: () {
                        showPopupDialog(
                          context: context,
                          child: (context) {
                            return PopupChangePassword(
                              oldPasswordController: _vm.oldPasswordController,
                              newPasswordController: _vm.newPasswordController,
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 8),
                    ProfileItem(
                      itemTitle: LocaleKeys.profile_changeAccountImage.locale,
                      iconAddress: AppAssets.icCameraPath,
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 4),
                      child: Text(
                        LocaleKeys.appTitle.locale,
                        style: TextStyle(
                          color: AppColors.silverChalice,
                        ),
                      ),
                    ),
                    ProfileItem(
                      itemTitle: LocaleKeys.profile_aboutUS.locale,
                      iconAddress: AppAssets.icMenuPath,
                      onTap: () {},
                    ),
                    SizedBox(height: 8),
                    ProfileItem(
                      itemTitle: LocaleKeys.profile_helpFeedback.locale,
                      iconAddress: AppAssets.icFlashPath,
                      onTap: () {},
                    ),
                    SizedBox(height: 8),
                    ProfileItem(
                      itemTitle: LocaleKeys.profile_supportUS.locale,
                      iconAddress: AppAssets.icLikePath,
                      onTap: () {},
                    ),
                    SizedBox(height: 8),
                    ProfileItem(
                      isLogOut: true,
                      itemTitle: LocaleKeys.profile_logOut.locale,
                      iconAddress: AppAssets.icLogoutPath,
                      onTap: () {},
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
