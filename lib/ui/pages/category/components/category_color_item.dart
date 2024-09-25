import 'package:want_to_do/export.dart';

class CategoryColorItem extends StatelessWidget {
  final List<Color> categoryColors;
  final void Function(int index) onTapItem;
  const CategoryColorItem({
    super.key,
    required this.categoryColors, required this.onTapItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categoryColors.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onTapItem(index),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: categoryColors[index],
          ),
        );
      },
      separatorBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(left: 12),
      ),
    );
  }
}
