import 'package:flutter/material.dart';
import 'package:want_to_do/utils/app_colors.dart';

class CustomCurrentPageBar extends StatelessWidget {
  final int currentPage;
  const CustomCurrentPageBar({
    super.key,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4,
          width: 26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(56),
            ),
            color: currentPage == 0
                ? AppColors.white.withOpacity(0.87)
                : AppColors.silverChalice,
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 4,
          width: 26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(56),
            ),
            color: currentPage == 1
                ? AppColors.white.withOpacity(0.87)
                : AppColors.silverChalice,
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 4,
          width: 26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(56),
            ),
            color: currentPage == 2
                ? AppColors.white.withOpacity(0.87)
                : AppColors.silverChalice,
          ),
        ),
      ],
    );
  }
}
