import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class OnboardingThirdPage extends StatelessWidget {
  const OnboardingThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(AppAssets.imgOnboardingThirdPath),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child: Text(
            LocaleKeys.onboarding_onboardingTitleThird.locale,
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            LocaleKeys.onboarding_onboardingMsgThird.locale,
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 3
          ),
        ),
      ],
    );
  }
}
