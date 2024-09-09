import 'package:flutter/material.dart';
import 'package:want_to_do/ui/widgets/custom_button.dart';
import 'package:want_to_do/utils/app_colors.dart';
import 'package:want_to_do/utils/app_paddings.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.pagePaddingHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/ic_arrow_back.png',
                color: AppColors.white,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 58),
                child: Text(
                  'Welcome to WantToDo',
                  style: TextStyle(
                    color: AppColors.white.withOpacity(0.87),
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 26),
              child: Text(
                'Please login to your account or create new account to continue',
                style: TextStyle(
                  color: AppColors.white.withOpacity(0.67),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            Spacer(),
            CustomButton(
              title: 'LOGIN',
              onClick: () {},
            ),
            SizedBox(height: 28),
            CustomButton(
              title: 'CREATE ACCOUNT',
              onClick: () {},
              backgroundColor: AppColors.backgroundColor,
              borderColor: AppColors.crocusPurple,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
