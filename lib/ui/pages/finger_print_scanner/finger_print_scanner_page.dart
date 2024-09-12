import 'package:want_to_do/export.dart';

class FingerPrintScannerPage extends StatefulWidget {
  const FingerPrintScannerPage({super.key});

  @override
  State<FingerPrintScannerPage> createState() => _FingerPrintScannerPageState();
}

class _FingerPrintScannerPageState
    extends BaseStatefulState<FingerPrintScannerPage> {
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final vm = context.watch<FingerPrintScannerViewModel>();
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: AppPaddings.pagePaddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'WELCOME BACK USERNAME',
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
                CustomUserAvatar(
                  borderColor: AppColors.crocusPurple,
                  circleRadius: 50,
                ),
                SizedBox(height: 30),
                CustomTextFormField(
                  controller: _controllerPassword,
                  textFieldName: 'Password',
                  hintText: 'Enter your Password',
                  isHaveObscure: true,
                  onChanged: (String text) {
                    vm.passwordText = _controllerPassword.text;
                  },
                ),
                SizedBox(height: 50),
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
                CustomOrText(),
                SizedBox(height: 30),
                CustomButton(
                  title: 'Login with FingerPrint',
                  iconLogoAddress: 'ic_fingerprint',
                  onClick: () {
                    showCustomBottomSheet(
                      context: context,
                      child: BottomSheetContent(
                        iconColor: AppColors.white,
                        messageColor: AppColors.white,
                      ),
                    );
                  },
                  backgroundColor: AppColors.backgroundColor,
                  borderColor: AppColors.crocusPurple,
                ),
                SizedBox(height: 50),
                Center(
                  child: Image.asset('assets/images/img_app_logo.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'WantToDo',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
