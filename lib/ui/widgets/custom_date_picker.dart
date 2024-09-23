import 'package:easy_localization/easy_localization.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class CustomDatePicker extends StatelessWidget {
  final VoidCallback onClickCancel;
  final VoidCallback onClickChooseTime;
  const CustomDatePicker({
    super.key,
    required this.onClickCancel,
    required this.onClickChooseTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TableCalendar<DateTime>(
          locale: context.locale.languageCode,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextFormatter: (date, locale) {
              return '${DateFormat.MMMM(locale).format(date).toUpperCase()}\n${DateFormat.y(locale).format(date)}';
            },
            titleTextStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.white.withOpacity(0.87),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.mountainMist,
                  width: 1,
                ),
              ),
            ),
            leftChevronIcon: Icon(
              Icons.chevron_left,
              color: AppColors.white,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right,
              color: AppColors.white,
            ),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            /// style on weekends
            weekendStyle: TextStyle(
              color: AppColors.lightRed,
              fontWeight: FontWeight.w700,
              fontSize: 10,
            ),

            /// weekday style
            weekdayStyle: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontWeight: FontWeight.w700,
              fontSize: 10,
            ),
          ),
          calendarStyle: CalendarStyle(
            defaultTextStyle: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
            tablePadding: EdgeInsets.only(top: 8),
            defaultDecoration: BoxDecoration(
              color: AppColors.balticSea,
              borderRadius: BorderRadius.circular(6),
            ),
            weekendDecoration: BoxDecoration(
              color: AppColors.balticSea,
              borderRadius: BorderRadius.circular(6),
            ),
            weekendTextStyle: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
            todayDecoration: BoxDecoration(
              color: AppColors.lavenderBlue,
              borderRadius: BorderRadius.circular(6),
            ),
            disabledTextStyle: TextStyle(color: Colors.grey),
            outsideTextStyle: TextStyle(color: AppColors.silverChalice),
            selectedDecoration: BoxDecoration(
              color: AppColors.lavenderBlue,
              borderRadius: BorderRadius.circular(6),
            ),
            disabledDecoration: BoxDecoration(
              color: AppColors.balticSea,
              borderRadius: BorderRadius.circular(6),
            ),
            todayTextStyle: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ), // Bugün yazısı beyaz
            cellMargin: EdgeInsets.all(10),
          ),
          availableGestures: AvailableGestures.all,
          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2010, 7, 27),
          lastDay: DateTime.utc(2030, 7, 27),
          selectedDayPredicate: (day) => isSameDay(day, DateTime(2022, 2, 9)),
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
                  onClick: () => onClickCancel.call(),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  title: LocaleKeys.home_chooseTime.locale,
                  onClick: () => onClickChooseTime.call(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
