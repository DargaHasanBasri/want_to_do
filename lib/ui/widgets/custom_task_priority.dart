import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class CustomTaskPriority extends StatelessWidget {
  final VoidCallback onClickCancel;
  final VoidCallback onClickSave;
  final int selectedPriority;
  final ValueChanged<int> onPrioritySelected;
  const CustomTaskPriority({
    super.key,
    required this.onClickCancel,
    required this.onClickSave,
    required this.selectedPriority,
    required this.onPrioritySelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<int> priority = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              LocaleKeys.home_taskPriority.locale,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.87),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomDivider(),
          ),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              ...priority.map((priority) {
                return GestureDetector(
                  onTap: () => onPrioritySelected(priority),
                  child: _buildPriorityItem(
                    isClick: selectedPriority == priority,
                    priority: priority,
                  ),
                );
              }).toList(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    backgroundColor: AppColors.darkGrey,
                    title: LocaleKeys.cancel.locale,
                    titleColor: AppColors.lavenderBlue,
                    onClick: () => onClickCancel.call(),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    title: LocaleKeys.save.locale,
                    onClick: () => onClickSave.call(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriorityItem({required int priority, required bool isClick}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: isClick ? AppColors.lavenderBlue : AppColors.balticSea,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Image.asset(
            AppAssets.icFlagPath,
            width: 24,
            height: 24,
          ),
          SizedBox(height: 6),
          Text(
            '${priority.toString()}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.white.withOpacity(0.87),
            ),
          ),
        ],
      ),
    );
  }
}
