import 'package:want_to_do/export.dart';

final class Routes {
  const Routes._();
  static const String Splash = 'splashProvider';
  static const String Onboarding = 'onboardingProvider';
  static const String Welcome = 'welcomeProvider';
  static const String Register = 'registerProvider';
  static const String Login = 'loginProvider';
  static const String MainTab = 'mainTabProvider';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Splash:
        return MaterialPageRoute(
          builder: (context) => const SplashProvider(),
        );
      case Routes.Onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingProvider(),
        );
      case Routes.Welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomeProvider(),
        );
      case Routes.Register:
        return MaterialPageRoute(
          builder: (context) => const RegisterProvider(),
        );
      case Routes.Login:
        return MaterialPageRoute(
          builder: (context) => LoginProvider(),
        );
      case Routes.MainTab:
        return MaterialPageRoute(
          builder: (context) => MainTabProvider(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
