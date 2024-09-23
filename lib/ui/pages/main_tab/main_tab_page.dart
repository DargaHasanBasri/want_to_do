import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';
import 'package:want_to_do/ui/widgets/custom_task_priority.dart';
import 'package:want_to_do/ui/widgets/custom_time_picker.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends BaseStatefulState<MainTabPage> {
  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<MainTabViewModel>(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCustomBottomSheet(
            context: context,
            child: AddTaskBottomSheet(
              taskTitleController: _vm.taskTitleController,
              taskDescriptionController: _vm.taskDescriptionController,
              onclickChooseTime: () {
                _vm.checkTaskParameters()
                    ? showPopupDialog(
                        context: context,
                        child: CustomDatePicker(
                          onClickCancel: appRoutes.popIfBackStackNotEmpty,
                          onClickChooseTime: () {
                            showPopupDialog(
                              context: context,
                              child: CustomTimePicker(
                                onClickCancel: appRoutes.popIfBackStackNotEmpty,
                                onClickSave: appRoutes.popIfBackStackNotEmpty,
                                dateTime: DateTime.now(),
                              ),
                            );
                          },
                        ),
                      )
                    : showToastMessage(
                        LocaleKeys.errorMessages_emptyOrNotSame.locale,
                      );
              },
              onclickAddCategory: () {
                _vm.checkTaskParameters()
                    ? showPopupDialog(
                        context: context,
                        child: PopupCategoryChoose(
                          categories: _vm.categories,
                        ),
                      )
                    : showToastMessage(
                        LocaleKeys.errorMessages_emptyOrNotSame.locale,
                      );
              },
              onclickTaskPriority: () {
                _vm.checkTaskParameters()
                    ? showPopupDialog(
                        context: context,
                        child: CustomTaskPriority(
                          onClickCancel: appRoutes.popIfBackStackNotEmpty,
                          onClickSave: appRoutes.popIfBackStackNotEmpty,
                          selectedPriority: _vm.selectedPriority,
                          onPrioritySelected: (int value) {
                            _vm.selectedPriority = value;
                          },
                        ),
                      )
                    : showToastMessage(
                        LocaleKeys.errorMessages_emptyOrNotSame.locale,
                      );
              },
              onclickSend: () {
                _vm.checkTaskParameters()
                    ? appRoutes.navigateToReplacement(Routes.MainTab)
                    : showToastMessage(
                        LocaleKeys.errorMessages_emptyOrNotSame.locale,
                      );
              },
            ),
          );
        },
        shape: CircleBorder(eccentricity: 1),
        child: _buildFloatingActionButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: AppColors.darkGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: _buildNavigationBar(_vm),
        ),
      ),
      body: _buildBody(_vm),
    );
  }

  Widget _buildBody(MainTabViewModel vm) {
    switch (vm.currentIndex) {
      case 0:
        return HomeProvider();
      case 1:
        return CalendarProvider();
      case 2:
        return HomeProvider();
      case 3:
        return ProfileProvider();
      default:
        return HomeProvider();
    }
  }

  Widget _buildFloatingActionButton() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lavenderBlue,
        shape: BoxShape.circle,
      ),
      child: Image.asset(AppAssets.icPlusAddPath),
    );
  }

  Widget _buildNavigationBar(MainTabViewModel vm) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BottomAppBarItem(
          iconAddress: vm.currentIndex == 0
              ? AppAssets.icActiveHomePath
              : AppAssets.icInactiveHomePath,
          pageName: LocaleKeys.home_home.locale,
          onTap: () {
            vm.currentIndex = 0;
          },
        ),
        BottomAppBarItem(
          iconAddress: vm.currentIndex == 1
              ? AppAssets.icActiveCalendarPath
              : AppAssets.icInactiveCalendarPath,
          pageName: LocaleKeys.calendar.locale,
          onTap: () {
            vm.currentIndex = 1;
          },
        ),
        SizedBox(),
        BottomAppBarItem(
          iconAddress: vm.currentIndex == 2
              ? AppAssets.icActiveFocusPath
              : AppAssets.icInactiveFocusPath,
          pageName: LocaleKeys.focus.locale,
          onTap: () {
            vm.currentIndex = 2;
          },
        ),
        BottomAppBarItem(
          iconAddress: vm.currentIndex == 3
              ? AppAssets.icActiveProfilePath
              : AppAssets.icInactiveProfilePath,
          pageName: LocaleKeys.profileTitle.locale,
          onTap: () {
            vm.currentIndex = 3;
          },
        ),
      ],
    );
  }
}
