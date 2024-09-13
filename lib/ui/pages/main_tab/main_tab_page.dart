import 'package:want_to_do/export.dart';
import 'package:want_to_do/ui/pages/main_tab/components/bottom_app_bar_item.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(eccentricity: 1),
        child: _buildFloatingActionButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: AppColors.darkGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _buildNavigationBar(),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return HomeProvider();
  }

  Widget _buildFloatingActionButton() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lavenderBlue,
        shape: BoxShape.circle,
      ),
      child: Image.asset('assets/images/ic_plus_add.png'),
    );
  }

  Widget _buildNavigationBar() {
    return Consumer<MainTabViewModel>(
      builder: (context, vm, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomAppBarItem(
              iconName:
                  vm.currentIndex == 0 ? 'ic_active_home' : 'ic_inactive_home',
              pageName: 'Home',
              onTap: () {
                vm.currentIndex = 0;
              },
            ),
            BottomAppBarItem(
              iconName: vm.currentIndex == 1
                  ? 'ic_active_calendar'
                  : 'ic_inactive_calendar',
              pageName: 'Calendar',
              onTap: () {
                vm.currentIndex = 1;
              },
            ),
            SizedBox(),
            BottomAppBarItem(
              iconName: vm.currentIndex == 2
                  ? 'ic_active_focus'
                  : 'ic_inactive_focus',
              pageName: 'Focus',
              onTap: () {
                vm.currentIndex = 2;
              },
            ),
            BottomAppBarItem(
              iconName: vm.currentIndex == 3
                  ? 'ic_active_profile'
                  : 'ic_inactive_profile',
              pageName: 'Profile',
              onTap: () {
                vm.currentIndex = 3;
              },
            ),
          ],
        );
      },
    );
  }
}
