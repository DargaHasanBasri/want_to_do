import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends BaseStatefulState<OnboardingPage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final _vm = Provider.of<OnboardingViewModel>(context);

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14, left: 14),
            child: CustomTextButton(
              title: LocaleKeys.skip.locale,
              titleColor: AppColors.white.withOpacity(0.44),
              onPress: () {
                if (_vm.currentPage < 2) {
                  _pageController.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
            ),
          ),
          CustomCurrentPageBar(currentPage: _vm.currentPage),
          SizedBox(height: 50),
          Expanded(
            child: Consumer<OnboardingViewModel>(
              builder: (context, vm, child) {
                return PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    vm.currentPage = page;
                  },
                  children: [
                    OnboardingFirstPage(),
                    OnboardingSecondPage(),
                    OnboardingThirdPage(),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextButton(
                    title: LocaleKeys.back.locale,
                    titleColor: AppColors.white.withOpacity(0.44),
                    onPress: () {
                      if (_vm.currentPage > 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    },
                  ),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: CustomButton(
                    title: _vm.currentPage != 2
                        ? LocaleKeys.next.locale
                        : LocaleKeys.getStarted.locale,
                    onClick: () {
                      if (_vm.currentPage < 2) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      } else {
                        appRoutes.navigateRemoveUntil(Routes.Welcome);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
