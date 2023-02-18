// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class PercentDesign extends StatefulWidget {
//   const PercentDesign({super.key});

//   @override
//   State<PercentDesign> createState() => _PercentDesignState();
// }

// class _PercentDesignState extends State<PercentDesign> {
//   double percent = 0;
//   late double height;
//   late double width;
//   @override
//   void initState() {
//     Timer? timer;
//     timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
//       setState(() {
//         percent += 10;
//         if (percent >= 100) {
//           timer?.cancel();
//           // percent=0;
//         }
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // height = MediaQuery.of(context).size.height;
//     // width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//           padding: const EdgeInsets.all(10),
//           child: CircularPercentIndicator(
//             radius: 60.0,
//             lineWidth: 10.0,
//             animation: true,
//             percent: 0.50,
//             center: const Text(
//               "20%",
//               style: TextStyle(
//                   fontSize: 45.0,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black),
//             ),
//             backgroundColor: Colors.yellow,
//             circularStrokeCap: CircularStrokeCap.round,
//             progressColor: Colors.redAccent,
//           ),),
//     );
//   }
// }
