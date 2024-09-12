import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
            'assets/images/ic_arrow_back_left.png',
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _welcomeMessage(),
            _loginAndCreateButton(),
          ],
        ),
      ),
    );
  }

  Widget _welcomeMessage() {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              LocaleKeys.onboarding_welcomeTitle.locale,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.87),
                fontSize: 32,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),
              textAlign: TextAlign.center,
              maxLines: 3,
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
            maxLines: 3,
          ),
        ),
      ],
    );
  }

  Widget _loginAndCreateButton() {
    return Column(
      children: [
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
    );
  }
}
