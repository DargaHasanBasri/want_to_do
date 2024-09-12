import 'package:want_to_do/export.dart';

class CustomRadioButton extends StatelessWidget {
  final VoidCallback onTap;
  final String textTitle;
  final bool isSelected;

  const CustomRadioButton({
    super.key,
    required this.isSelected,
    required this.textTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: CircleAvatar(
              radius: 8,
              backgroundColor:
                  isSelected ? AppColors.appleGreen : AppColors.white,
            ),
          ),
          SizedBox(width: 8),
          Text(
            textTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.white.withOpacity(0.87),
            ),
          ),
        ],
      ),
    );
  }
}
