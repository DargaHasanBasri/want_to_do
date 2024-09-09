import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img_app_logo.png'),
            SizedBox(height: 20),
            Text(
              'WantToDo',
              style: TextStyle(
                color: Color(0xffffffff),
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
