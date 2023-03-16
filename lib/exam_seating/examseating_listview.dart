import 'package:flutter/material.dart';
import 'package:flutter_application_1/exam_seating/examseating_design.dart';
import 'package:flutter_application_1/exam_seating/examseating_model.dart';
import 'package:flutter_application_1/exam_seating/examseating_network.dart';

class ExamSeatingDesign extends StatefulWidget {
  const ExamSeatingDesign({super.key});

  @override
  State<ExamSeatingDesign> createState() => _ExamSeatingDesignState();
}

class _ExamSeatingDesignState extends State<ExamSeatingDesign> {
  List<ExamSeating> seating = [];
  @override
  void initState() {
    super.initState();
    fetchpost();
  }

  Future<void> fetchpost() async {
    try {
      final seatinglist = await ExamSeatingRepository().fetchposts();
      setState(() {
        seating = seatinglist;
      });
    } on Exception catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 120, left: 32, right: 32),
              itemCount: seating.length,
              itemBuilder: (context, index) {
                return ContainerDesign(
                  // subCode: '12SSP023',
                  // examDate: '02.03.23',
                  // examType: 'CA1',
                  // examHallno: 'A101',
                  // examName: 'DBMS',
                  // examDay: 'Monday',
                  // examTime: '9am to 12pm',
                  // description: 'A block,1 floor',

                  subCode: seating[index].subCode,
                  examDate: seating[index].examDate,
                  examType: seating[index].examType,
                  examHallno: seating[index].examHallno,
                  examName: seating[index].examName,
                  examDay: seating[index].examDay,
                  examTime: seating[index].examTime,
                  blockName: seating[index].blockName,
                  floorNo: seating[index].floorNo,
                  isExamToday: seating[index].isExamToday,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
