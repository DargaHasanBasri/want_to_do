import 'package:want_to_do/export.dart';

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
        backgroundColor: AppColors.backgroundColor,
        forceMaterialTransparency: true,
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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final vm = context.watch<LoginViewModel>();
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
                onChanged: (String text) {
                  vm.usernameText = _controllerUserName.text;
                },
              ),
              SizedBox(height: 26),
              CustomTextFormField(
                controller: _controllerPassword,
                textFieldName: 'Password',
                hintText: 'Enter your Password',
                isHaveObscure: true,
                onChanged: (String text) {
                  vm.passwordText = _controllerPassword.text;
                },
              ),
              SizedBox(height: 70),
              CustomButton(
                title: 'LOGIN',
                onClick: () {
                  vm.buttonIsActive()
                      ? SizedBox()
                      : showToastMessage(
                          'Eksik veya hatalı giriş yaptınız!',
                        );
                },
                backgroundColor: vm.buttonIsActive()
                    ? AppColors.crocusPurple
                    : AppColors.crocusPurple.withOpacity(0.5),
                titleColor: vm.buttonIsActive()
                    ? AppColors.white
                    : AppColors.white.withOpacity(0.5),
              ),
              SizedBox(height: 30),
              _orText(),
              SizedBox(height: 30),
              CustomButton(
                title: 'Login with Google',
                iconLogoAddress: 'ic_logo_google',
                onClick: () {},
                backgroundColor: AppColors.backgroundColor,
                borderColor: AppColors.crocusPurple,
              ),
              SizedBox(height: 20),
              CustomButton(
                title: 'Login with Apple',
                iconLogoAddress: 'ic_logo_apple',
                onClick: () {},
                backgroundColor: AppColors.backgroundColor,
                borderColor: AppColors.crocusPurple,
              ),
              SizedBox(height: 50),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: TextStyle(
                      color: AppColors.mountainMist,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: AppColors.white.withOpacity(0.87),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
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

  Widget _orText() {
    return Row(
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
    );
  }
}
