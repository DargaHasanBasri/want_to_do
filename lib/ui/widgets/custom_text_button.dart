import 'package:want_to_do/export.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final VoidCallback onPress;
  const CustomTextButton({
    super.key,
    required this.title,
    required this.titleColor,
    this.titleFontSize,
    this.titleFontWeight,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPress.call(),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: titleFontSize ?? 16,
          fontWeight: titleFontWeight ?? FontWeight.w400,
        ),
      ),
    );
  }
}
