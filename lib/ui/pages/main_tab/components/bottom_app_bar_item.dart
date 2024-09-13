import 'package:want_to_do/export.dart';

class BottomAppBarItem extends StatelessWidget {
  final String iconName;
  final String pageName;
  final VoidCallback onTap;

  const BottomAppBarItem({
    super.key,
    required this.iconName,
    required this.pageName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          radius: 40,
          splashColor: Colors.white.withOpacity(0.3),
          highlightColor: Colors.transparent,
          onTap: () => onTap.call(),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Expanded(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      'assets/images/${iconName}.png',
                      width: 24,
                      height: 24,
                      color: AppColors.white.withOpacity(0.87),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Expanded(
                  child: Text(
                    pageName,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.white.withOpacity(0.87),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
