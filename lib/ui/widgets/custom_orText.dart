import 'package:want_to_do/export.dart';

class CustomOrText extends StatelessWidget {
  const CustomOrText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.mountainMist,
          ),
        ),
        SizedBox(width: 2),
        Text(
          'or',
          style: TextStyle(
            color: AppColors.mountainMist,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        SizedBox(width: 2),
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.mountainMist,
          ),
        ),
      ],
    );
  }
}
