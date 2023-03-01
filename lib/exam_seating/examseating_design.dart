import 'package:flutter/material.dart';
import 'package:flutter_application_1/exam_seating/examseating_constants.dart';

class ExamSeatingDesign extends StatefulWidget {
  const ExamSeatingDesign({super.key});

  @override
  State<ExamSeatingDesign> createState() => _ExamSeatingDesignState();
}

class _ExamSeatingDesignState extends State<ExamSeatingDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 120, left: 52, right: 52),
              children: [
                const ContainerDesign(),
                const SizedBox(
                  height: 45,
                ),
                const ContainerDesign(),
                const SizedBox(
                  height: 45,
                ),
                ContainerDesign(bgcolor: Page1Colors().ash),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerDesign extends StatefulWidget {
  const ContainerDesign({super.key, bgcolor});

  @override
  State<ContainerDesign> createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 323,
      width: 326,
      decoration: BoxDecoration(
          color: Page1Colors().yellow,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 18, spreadRadius: 4)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 138, top: 17),
            child: SizedBox(
              height: 17,
              width: 172,
              child: Text(
                'Subject Code : 12SSP002',
                style: TextStyle(
                    color: Page1Colors().white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          const SizedBox(height: 11),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Container(
                  height: 84,
                  width: 126,
                  alignment: Alignment.center,
                  child: Text(
                    'CA1',
                    style: TextStyle(
                        color: Page1Colors().textcolor,
                        fontSize: 69,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 84, top: 11),
                child: Container(
                  height: 61,
                  width: 66,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Page1Colors().textcolor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Column(
                    children: [
                      Text(
                        '02',
                        style: TextStyle(
                            color: Page1Colors().white,
                            fontSize: 33,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Thursday',
                        style: TextStyle(
                            color: Page1Colors().white,
                            fontSize: 10,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Container(
              height: 51,
              width: 274,
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    'MATHEMATICS',
                    style: TextStyle(
                        color: Page1Colors().white,
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Text('Date : 02.03.23',
                    style: TextStyle(
                        color: Page1Colors().white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900)),
                const SizedBox(
                  width: 10,
                ),
                Text('Time : 11am to 2pm',
                    style: TextStyle(
                        color: Page1Colors().textcolor,
                        fontSize: 15,
                        fontWeight: FontWeight.w900))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 24),
            child: Text('Hall No : E201',
                style: TextStyle(
                    color: Page1Colors().white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 24),
            child: Container(
              height: 48,
              width: 181,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alloted Block name :',
                      style: TextStyle(
                          color: Page1Colors().textcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w800)),
                  Text('A block, 2nd Floor',
                      style: TextStyle(
                          color: Page1Colors().white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
