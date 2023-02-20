import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance/attendance_constants.dart';

class AttendancePage2Design extends StatefulWidget {
  const AttendancePage2Design({super.key});

  @override
  State<AttendancePage2Design> createState() => _AttendancePage2DesignState();
}

class _AttendancePage2DesignState extends State<AttendancePage2Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  color: Page2Colors().background,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(58),
                      bottomRight: Radius.circular(58))),
              height: 437,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 125,
                left: 39,
                right: 39,
              ),
              child: Container(
                height: 611,
                width: 312,
                decoration: BoxDecoration(
                  color: Page2Colors().white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 46, left: 24),
                          child: Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 126,
                            color: Page2Colors().white,
                            child: Text(
                              'Absent days',
                              style: TextStyle(
                                  color: Page2Colors().textcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 27.87,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Page2Colors().yellow,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            alignment: Alignment.center,
                            height: 20,
                            width: 82,
                            child: Text(
                              '20',
                              style: TextStyle(
                                  color: Page2Colors().white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row()
                  ],
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
