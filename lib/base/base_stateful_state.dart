import 'package:want_to_do/export.dart';
import 'package:want_to_do/services/service.locator.dart';
import 'package:want_to_do/utils/utility.dart';

abstract class BaseStatefulState<T extends StatefulWidget> extends State<T> {
  final AppRoutes appRoutes = locator<AppRoutes>();
  LocalStorageService localStorage = LocalStorageService();
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  void showToastMessage(String content) {
    fToast.showToast(
      child: Utility().buildToast(content),
      gravity: ToastGravity.TOP,
      positionedToastBuilder: (context, child) {
        return Positioned(
          child: child,
          top: 50,
          left: 20,
          right: 20,
        );
      },
    );
  }

  void showCustomBottomSheet({
    required BuildContext context,
    required Widget child,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: child,
        );
      },
    );
  }

  void showPopupDialog({
    required BuildContext context,
    required Widget child,
  }) {
    showDialog<void>(
      barrierColor: AppColors.black.withOpacity(0.74),
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 24),
          elevation: 0,
          backgroundColor: AppColors.darkGrey,
          child: child,
        );
      },
    );
  }
}
