import 'package:want_to_do/export.dart';

class CustomDivider extends StatelessWidget {
  final double? borderRadius;
  const CustomDivider({
    super.key,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      decoration: BoxDecoration(
        color: AppColors.mountainMist,
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
      ),
    );
  }
}
