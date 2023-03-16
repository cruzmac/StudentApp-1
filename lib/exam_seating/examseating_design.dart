import 'package:flutter/material.dart';
import 'package:flutter_application_1/exam_seating/examseating_constants.dart';

class ContainerDesign extends StatefulWidget {
  final String? subCode;
  final String? examType;
  final String? examName;
  final String? examDate;
  final String? examTime;
  final String? examHallno;
  final String? examDay;
  final String? blockName;
  final String? floorNo;
  final bool? isExamToday;

  const ContainerDesign(
      {super.key,
      this.examName,
      this.subCode,
      this.examType,
      this.examDate,
      this.examTime,
      this.examHallno,
      this.examDay,
      this.blockName,
      this.floorNo,
      this.isExamToday});
  @override
  State<ContainerDesign> createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  ContainerDesign data = const ContainerDesign();
  @override
  Widget build(BuildContext context) {
    final status = widget.isExamToday ?? false;
    Color color = status ? Page1Colors().yellow : Page1Colors().ash;
    return Container(
      height: 323,
      width: 326,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 5)
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
                'Subject Code : ${widget.subCode}',
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
                  width: 150,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${widget.examType}',
                    style: TextStyle(
                        color: Page1Colors().textcolor,
                        fontSize: 70,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64, top: 11),
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
                        '${widget.examDay}',
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
                    '${widget.examName}',
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
                Text('Date : ${widget.examDate}',
                    style: TextStyle(
                        color: Page1Colors().white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900)),
                const SizedBox(
                  width: 10,
                ),
                Text('Time : ${widget.examTime}',
                    style: TextStyle(
                        color: Page1Colors().textcolor,
                        fontSize: 15,
                        fontWeight: FontWeight.w900))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 24),
            child: Text('Hall No : ${widget.examHallno}',
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
                  Text('${widget.blockName} Block ${widget.floorNo} Floor',
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
