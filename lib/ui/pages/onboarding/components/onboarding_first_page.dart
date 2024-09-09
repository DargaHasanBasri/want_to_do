import 'package:flutter/material.dart';
import 'package:want_to_do/ui/pages/onboarding/components/custom_current_page_bar.dart';
import 'package:want_to_do/utils/app_colors.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/img_onboarding_first.png'),
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 42),
          child: Text(
            'Manage your tasks',
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
            'You can easily manage all of your daily tasks in DoMe for free',
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
