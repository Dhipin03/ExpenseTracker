import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendar_widget extends StatelessWidget {
  const calendar_widget({super.key, this.isneed = false});
  final bool isneed;
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      todayHighlightColor: Colors.white,
      cellBorderColor: Colors.white,
      showTodayButton: true,
      showNavigationArrow: true,
      selectionDecoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
      ),
      view: isneed ? CalendarView.day : CalendarView.month,
      monthViewSettings: MonthViewSettings(
        showTrailingAndLeadingDates: false,
        // optional: customize cell appearance if you keep leading/trailing dates
        // monthCellStyle: MonthCellStyle(backgroundColor: Colors.black),
      ),
      headerStyle: CalendarHeaderStyle(
        backgroundColor: Colors.black,
        textStyle: Theme.of(context).textTheme.titleLarge!,
      ),
    );
  }
}
