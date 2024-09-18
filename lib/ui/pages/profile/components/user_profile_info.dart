import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            LocaleKeys.profileTitle.locale,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.white.withOpacity(0.87),
            ),
          ),
        ),
        CustomUserAvatar(
          circleRadius: 40,
          borderColor: AppColors.darkGrey,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            LocaleKeys.username.locale,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.white.withOpacity(0.87),
            ),
          ),
        ),
      ],
    );
  }
}
