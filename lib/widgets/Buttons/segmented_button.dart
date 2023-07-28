import 'package:flutter/material.dart';
import '../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

enum Calendar { day, week, month, year }

class CsSegmentedButton extends StatefulWidget {
  const CsSegmentedButton({super.key});

  @override
  State<CsSegmentedButton> createState() => _CsSegmentedButtonState();
}

class _CsSegmentedButtonState extends State<CsSegmentedButton> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
            value: Calendar.day,
            label: Text('Day'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Calendar>(
            value: Calendar.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.month,
            label: Text('Month'),
            icon: Icon(Icons.calendar_view_month)),
        ButtonSegment<Calendar>(
            value: Calendar.year,
            label: Text('Year'),
            icon: Icon(Icons.calendar_today)),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wSegmentedButton,
        );
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}
