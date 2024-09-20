import 'package:easy_localization/easy_localization.dart';
import 'package:want_to_do/services/service.locator.dart';
import 'export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  await setupLocator();
  runApp(
    EasyLocalization(
      supportedLocales: [
        AppLocaleConstant.TR_LOCALE,
        AppLocaleConstant.EN_LOCALE,
      ],
      path: AppLocaleConstant.LANG_PATH,
      fallbackLocale: AppLocaleConstant.EN_LOCALE,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => SettingsViewModel(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      navigatorKey: locator<AppRoutes>().baseNavigatorKey,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: Routes.MainTab,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, widget) {
        return widget!;
      },
    );
  }
}
