import 'package:want_to_do/export.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img_app_logo.png'),
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
    );
  }

  Future<void> waitAndNavigate(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {},
    );
  }
}
