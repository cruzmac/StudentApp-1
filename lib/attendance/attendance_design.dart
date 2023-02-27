import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance/attendance_constants.dart';
import 'package:flutter_application_1/attendance/attendance_model.dart';
import 'package:flutter_application_1/attendance/attendance_network.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttendanceDesign extends StatefulWidget {
  const AttendanceDesign({super.key});

  @override
  State<AttendanceDesign> createState() => _AttendanceDesignState();
}

class _AttendanceDesignState extends State<AttendanceDesign> {
  Attendance attend = Attendance();
  @override
  void initState() {
    super.initState();
    fetchpost();
  }

  Future<void> fetchpost() async {
    try {
      attend = await AttendanceRepository().fetchposts();
    } on Exception catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    final status1 = attend.attendancepercent ?? 40.3;
    final percent = status1 / 100;
    Color getcolor() {
      if (status >= 80) {
        return Page1Colors().green;
      } else if (status >= 50) {
        return Page1Colors().orange;
      } else {
        return Page1Colors().red;
      }
    }

    Color getcolor2() {
      if (status1 >= 80) {
        return Page1Colors().green;
      } else if (status1 >= 50) {
        return Page1Colors().orange;
      } else {
        return Page1Colors().red;
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  color: Page1Colors().background,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(58),
                      bottomRight: Radius.circular(58))),
              height: 437,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 131,
                left: 60,
              ),
              child: Container(
                height: 611,
                width: 312,
                decoration: BoxDecoration(
                  color: Page1Colors().white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 27),
                          child: Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 126,
                            color: Page1Colors().white,
                            child: Text(
                              'Absent days',
                              style: TextStyle(
                                  color: Page1Colors().textcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 27.87,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 39,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: getcolor(),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                alignment: Alignment.center,
                                height: 20,
                                width: 82,
                                child: Text(
                                  '${attend.noofabsentdays}',
                                  style: TextStyle(
                                      color: Page1Colors().white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 47),
                              child: GestureDetector(
                                onTap: () => GoRouter.of(context)
                                    .push(Uri(path: '/secondpage').toString()),
                                child: SizedBox(
                                  height: 12,
                                  width: 39,
                                  child: Text(
                                    'See more...',
                                    style: TextStyle(
                                        fontSize: 7.5,
                                        color: Page1Colors().smalltxt,
                                        fontWeight: FontWeight.w100),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    //     const Divider(color: Colors.black,),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 11.83,
                          ),
                          child: Container(
                            height: 36,
                            width: 289.33,
                            color: Page1Colors().white,
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Total no of working days',
                              style: TextStyle(
                                  color: Page1Colors().textcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                color: Page1Colors().green,
                              ),
                              alignment: Alignment.center,
                              height: 24,
                              width: 94,
                              child: Text(
                                '${attend.workingdays}',
                                style: TextStyle(
                                    color: Page1Colors().white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //  const Divider(color: Colors.black,),
                    const SizedBox(
                      height: 28,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 11.83,
                          ),
                          child: Container(
                            height: 36,
                            width: 289.33,
                            color: Colors.white,
                            alignment: Alignment.topCenter,
                            child: Text(
                              'No of working days till now',
                              style: TextStyle(
                                  color: Page1Colors().textcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                color: Page1Colors().green,
                              ),
                              alignment: Alignment.center,
                              height: 24,
                              width: 94,
                              child: Text(
                                '${attend.workingdaystillnow}',
                                style: TextStyle(
                                    color: Page1Colors().white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 61,
                        right: 60,
                      ),
                      child: Container(
                        height: 22,
                        width: 230,
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Attendance Percentage',
                          style: TextStyle(
                              color: Page1Colors().textcolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90, right: 89),
                      child: CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 10.0,
                        animation: true,
                        percent: percent,
                        center: Text(
                          "${attend.attendancepercent}",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: getcolor(),
                          ),
                        ),
                        backgroundColor: Page1Colors().yellow,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: getcolor(),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 68),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            color: getcolor(),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 11,
                            width: 45,
                            alignment: Alignment.center,
                            child: Text(
                              'Present',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Page1Colors().smalltxt,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                          const SizedBox(
                            width: 64,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            color: Page1Colors().yellow,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 11,
                            width: 45,
                            alignment: Alignment.center,
                            child: Text(
                              'Absent',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Page1Colors().smalltxt,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ],
                      ),
                    )
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
