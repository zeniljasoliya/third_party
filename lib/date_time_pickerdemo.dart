// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';

// class DateTimePickerDemo extends StatefulWidget {
//   const DateTimePickerDemo({super.key});

//   @override
//   State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
// }

// class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             DateTimePicker(
//               type: DateTimePickerType.dateTimeSeparate,
//               dateMask: 'd MMM, yyyy',
//               initialValue: DateTime.now().toString(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2100),
//               icon: Icon(Icons.event),
//               dateLabelText: 'Date',
//               timeLabelText: "Hour",
//               selectableDayPredicate: (date) {
//                 // Disable weekend days to select from the calendar
//                 if (date.weekday == 6 || date.weekday == 7) {
//                   return false;
//                 }

//                 return true;
//               },
//               onChanged: (value) => print(value),
//               validator: (value) {
//                 print(value);
//                 return null;
//               },
//               onSaved: (value) => print(value),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
