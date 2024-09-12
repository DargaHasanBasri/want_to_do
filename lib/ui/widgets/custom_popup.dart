import 'package:want_to_do/export.dart';

class CustomPopup extends StatelessWidget {
  final Widget Function(BuildContext context) child;
  const CustomPopup({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 24),
      elevation: 0,
      backgroundColor: AppColors.darkGrey,
      child: child(context),
    );
  }
}
