import 'package:flutter/material.dart';
import 'package:want_to_do/base/base_stateful_state.dart';
import 'package:want_to_do/ui/widgets/custom_button.dart';
import 'package:want_to_do/ui/widgets/custom_text_form_field.dart';
import 'package:want_to_do/utils/app_colors.dart';
import 'package:want_to_do/utils/app_paddings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BaseStatefulState<LoginPage> {
  final TextEditingController _controllerUserName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Image.asset(
            'assets/ic_arrow_back.png',
            color: AppColors.white,
          ),
        ),
      ),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Login',
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
            CustomTextFormField(
              controller: _controllerUserName,
              textFieldName: 'Username',
              hintText: 'Enter your Username',
            ),
            SizedBox(height: 26),
            CustomTextFormField(
              controller: _controllerPassword,
              textFieldName: 'Password',
              hintText: 'Enter your Password',
            ),
            SizedBox(height: 70),
            CustomButton(
              title: 'LOGIN',
              onClick: () {},
              backgroundColor: AppColors.crocusPurple.withOpacity(0.5),
              titleColor: AppColors.white.withOpacity(0.5),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: AppColors.mountainMist,
                  ),
                ),
                SizedBox(width: 2),
                Text(
                  'or',
                  style: TextStyle(
                    color: AppColors.mountainMist,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                SizedBox(width: 2),
                Expanded(
                  child: Container(
                    height: 1,
                    color: AppColors.mountainMist,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
