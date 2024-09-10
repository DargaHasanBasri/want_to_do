import 'package:want_to_do/export.dart';
import 'package:want_to_do/utils/utility.dart';

abstract class BaseStatefulState<T extends StatefulWidget> extends State<T> {
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
      isDismissible: false,
      builder: (context) {
        return child;
      },
    );
  }
}
