import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Examdates extends StatefulWidget {

  @override
  State<Examdates> createState() => _ExamdatesState();
}

class _ExamdatesState extends State<Examdates> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.green,
      title:  Center(child: Text('EXAM DATES', style: TextStyle(
          fontSize: 25
      ),)),
    ),

      body:SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),

          )
        ],
      )),
    );
  }
}
