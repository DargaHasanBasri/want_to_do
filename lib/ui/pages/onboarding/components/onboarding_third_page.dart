import 'package:want_to_do/export.dart';

class OnboardingThirdPage extends StatelessWidget {
  const OnboardingThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/img_onboarding_third.png'),
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 42),
          child: Text(
            'Organize your tasks',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'You can organize your daily tasks by adding your tasks into separate categories',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
