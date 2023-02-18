import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance/attendance_constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttendanceDesign extends StatefulWidget {
  const AttendanceDesign({super.key});

  @override
  State<AttendanceDesign> createState() => _AttendanceDesignState();
}

class _AttendanceDesignState extends State<AttendanceDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors().background,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(58),
                      bottomRight: Radius.circular(58))),
              height: 437,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 130,
                left: 40,
                right: 40,
              ),
              child: Container(
                height: 611,
                width: 312,
                decoration: BoxDecoration(
                  color: AppColors().white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 27),
                          child: Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 126,
                            color: AppColors().white,
                            child: Text(
                              'Absent days',
                              style: TextStyle(
                                  color: AppColors().textcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 27.87,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 49),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors().yellow,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            alignment: Alignment.center,
                            height: 20,
                            width: 82,
                            child: Text(
                              '20',
                              style: TextStyle(
                                  color: AppColors().white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 227),
                      child: SizedBox(
                        height: 12,
                        width: 39,
                        child: Text(
                          'See more...',
                          style: TextStyle(
                              fontSize: 7.5,
                              color: AppColors().smalltxt,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
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
                            color: AppColors().white,
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Total no of working days',
                              style: TextStyle(
                                  color: AppColors().textcolor,
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
                                color: AppColors().green,
                              ),
                              alignment: Alignment.center,
                              height: 24,
                              width: 94,
                              child: Text(
                                '100',
                                style: TextStyle(
                                    color: AppColors().white,
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
                              'No of working days',
                              style: TextStyle(
                                  color: AppColors().textcolor,
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
                                color: AppColors().green,
                              ),
                              alignment: Alignment.center,
                              height: 24,
                              width: 94,
                              child: Text(
                                '60',
                                style: TextStyle(
                                    color: AppColors().white,
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
                        width: 191,
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Attendance Percentage',
                          style: TextStyle(
                              color: AppColors().textcolor,
                              fontWeight: FontWeight.w600),
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
                        percent: 0.75,
                        center: Text(
                          "20.43%",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: AppColors().green,
                          ),
                        ),
                        backgroundColor: AppColors().yellow,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: AppColors().green,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 68, right: 58),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            color: AppColors().green,
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
                                  color: AppColors().smalltxt,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                          const SizedBox(
                            width: 64,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            color: AppColors().yellow,
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
                                  color: AppColors().smalltxt,
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
