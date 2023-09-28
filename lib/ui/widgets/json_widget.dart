// import 'package:automated_testing_framework/automated_testing_framework.dart';
// import 'package:flutter/material.dart';
// // import 'package:json_dynamic_widget/json_dynamic_widget.dart';

// class JsonWidget extends StatefulWidget {
//   final Map<String, dynamic> data;
//   final JsonWidgetRegistry registry;

//   JsonWidget({
//     required this.data,
//     required this.registry,
//     Key? key,
//   }) : super(key: key);

//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<JsonWidget> {
//   late JsonWidgetData? _data;
//   @override
//   void initState() {
//     super.initState();

//     _data = JsonWidgetData.fromDynamic(widget.data);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _data!.build(
//       childBuilder: (context, widget) {
//         var result = widget;

//         var id = widget.key?.toString();

//         if (id?.isNotEmpty == true && id?.contains('-') != true) {
//           result = Testable(
//             id: widget.key.toString(),
//             child: result,
//           );
//         }

//         return result;
//       },
//       context: context,
//     );
//   }
// }
