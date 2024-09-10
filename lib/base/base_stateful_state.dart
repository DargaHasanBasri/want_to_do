import 'package:want_to_do/export.dart';

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
      child: buildToast(content),
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

  Widget buildToast(String content) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: AppColors.crocusPurple.withOpacity(0.8),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      child: Text(
        content,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
