import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class CustomTimePicker extends StatefulWidget {
  final DateTime dateTime;
  final VoidCallback onClickCancel;
  final VoidCallback onClickSave;

  const CustomTimePicker({
    super.key,
    required this.onClickCancel,
    required this.onClickSave,
    required this.dateTime,
  });

  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  late ValueNotifier<int> hourNotifier;
  late ValueNotifier<int> minuteNotifier;
  late ValueNotifier<String> periodNotifier;

  @override
  void initState() {
    super.initState();

    int initialHour = widget.dateTime.hour > 12
        ? widget.dateTime.hour - 12
        : widget.dateTime.hour;
    initialHour = initialHour == 0 ? 12 : initialHour;

    hourNotifier = ValueNotifier<int>(initialHour);
    minuteNotifier = ValueNotifier<int>(widget.dateTime.minute);
    periodNotifier = ValueNotifier<String>(
      widget.dateTime.hour >= 12 ? 'PM' : 'AM',
    );
  }

  @override
  void dispose() {
    hourNotifier.dispose();
    minuteNotifier.dispose();
    periodNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Choose Time',
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomDivider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: hourNotifier,
              builder: (context, hour, _) {
                return _buildCustomPicker(
                  itemCount: 12,
                  selectedItem: hour - 1,
                  onItemSelected: (index) {
                    hourNotifier.value = index + 1;
                  },
                  items: List<String>.generate(
                    12,
                    (index) => (index + 1).toString().padLeft(2, '0'),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            const Text(
              ":",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(width: 10),
            ValueListenableBuilder<int>(
              valueListenable: minuteNotifier,
              builder: (context, minute, _) {
                return _buildCustomPicker(
                  itemCount: 60,
                  selectedItem: minute,
                  onItemSelected: (index) {
                    minuteNotifier.value = index;
                  },
                  items: List<String>.generate(
                    60,
                    (index) => index.toString().padLeft(2, '0'),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            ValueListenableBuilder<String>(
              valueListenable: periodNotifier,
              builder: (context, period, _) {
                return _buildCustomPicker(
                  itemCount: 2,
                  selectedItem: period == "AM" ? 0 : 1,
                  onItemSelected: (index) {
                    periodNotifier.value = index == 0 ? "AM" : "PM";
                  },
                  items: const ["AM", "PM"],
                );
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  backgroundColor: AppColors.darkGrey,
                  title: LocaleKeys.cancel.locale,
                  titleColor: AppColors.lavenderBlue,
                  onClick: () => widget.onClickCancel.call(),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  title: LocaleKeys.home_chooseTime.locale,
                  onClick: () => widget.onClickSave.call(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCustomPicker({
    required int itemCount,
    required int selectedItem,
    required ValueChanged<int> onItemSelected,
    required List<String> items,
  }) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.balticSea,
        borderRadius: BorderRadius.circular(4),
      ),
      child: ListWheelScrollView.useDelegate(
        itemExtent: 30,
        perspective: 0.001,
        useMagnifier: true,
        physics: const FixedExtentScrollPhysics(),
        controller: FixedExtentScrollController(initialItem: selectedItem),
        onSelectedItemChanged: onItemSelected,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            final bool isSelected = index == selectedItem;
            return Center(
              child: Text(
                items[index],
                style: TextStyle(
                  color:
                      isSelected ? Colors.white : Colors.white.withOpacity(0.5),
                  fontSize: isSelected ? 24 : 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            );
          },
          childCount: itemCount,
        ),
      ),
    );
  }
}
