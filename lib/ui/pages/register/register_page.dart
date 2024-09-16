import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends BaseStatefulState<RegisterPage> {
  final TextEditingController _controllerUserName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirmPassword =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        forceMaterialTransparency: true,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            appRoutes.popIfBackStackNotEmpty();
          },
          icon: Image.asset(
            AppAssets.icArrowBackLeftPath,
            color: AppColors.white,
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final vm = context.watch<RegisterViewModel>();
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: AppPaddings.pagePaddingHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  LocaleKeys.register.locale,
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
                textFieldBgColor: AppColors.darkJungleGreen,
                hintTextColor: AppColors.davyGrey,
                textFieldTitle: LocaleKeys.username.locale,
                hintText: LocaleKeys.loginRegister_hintTextUsername.locale,
                onChanged: (String text) {
                  vm.usernameText = _controllerUserName.text;
                },
              ),
              SizedBox(height: 26),
              CustomTextFormField(
                controller: _controllerPassword,
                textFieldBgColor: AppColors.darkJungleGreen,
                hintTextColor: AppColors.davyGrey,
                textFieldTitle: LocaleKeys.password.locale,
                hintText: LocaleKeys.loginRegister_hintTextPassword.locale,
                isHaveObscure: true,
                onChanged: (String text) {
                  vm.passwordText = _controllerPassword.text;
                },
              ),
              SizedBox(height: 26),
              CustomTextFormField(
                controller: _controllerConfirmPassword,
                textFieldBgColor: AppColors.darkJungleGreen,
                hintTextColor: AppColors.davyGrey,
                textFieldTitle: LocaleKeys.confirmPassword.locale,
                hintText:
                    LocaleKeys.loginRegister_hintTextConfirmPassword.locale,
                isHaveObscure: true,
                onChanged: (String text) {
                  vm.passwordConfirmText = _controllerConfirmPassword.text;
                },
              ),
              SizedBox(height: 40),
              CustomButton(
                title: LocaleKeys.login.locale.toUpperCase(),
                onClick: () {
                  vm.buttonIsActive()
                      ? SizedBox()
                      : showToastMessage(
                          LocaleKeys.errorMessages_emptyOrNotSame.locale,
                        );
                },
                backgroundColor: vm.buttonIsActive()
                    ? AppColors.crocusPurple
                    : AppColors.crocusPurple.withOpacity(0.5),
                titleColor: vm.buttonIsActive()
                    ? AppColors.white
                    : AppColors.white.withOpacity(0.5),
              ),
              SizedBox(height: 24),
              CustomOrText(),
              SizedBox(height: 24),
              CustomButton(
                title: LocaleKeys.loginRegister_withGoogle.locale,
                iconLogoAddress: AppAssets.icLogoGooglePath,
                onClick: () {},
                backgroundColor: AppColors.backgroundColor,
                borderColor: AppColors.crocusPurple,
              ),
              SizedBox(height: 20),
              CustomButton(
                title: LocaleKeys.loginRegister_withApple.locale,
                iconLogoAddress: AppAssets.icLogoApplePath,
                onClick: () {},
                backgroundColor: AppColors.backgroundColor,
                borderColor: AppColors.crocusPurple,
              ),
              SizedBox(height: 40),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: LocaleKeys.loginRegister_isAccountPositive.locale,
                    style: TextStyle(
                      color: AppColors.mountainMist,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: LocaleKeys.login.locale,
                        style: TextStyle(
                          color: AppColors.white.withOpacity(0.87),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            appRoutes.navigateToReplacement(Routes.Login);
                          },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
