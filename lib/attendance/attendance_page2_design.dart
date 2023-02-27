import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance/attendance_constants.dart';
import 'package:flutter_application_1/attendance/attendance_model.dart';
import 'package:flutter_application_1/attendance/attendance_network.dart';

class AttendancePage2Design extends StatefulWidget {
  const AttendancePage2Design({super.key});

  @override
  State<AttendancePage2Design> createState() => _AttendancePage2DesignState();
}

class _AttendancePage2DesignState extends State<AttendancePage2Design> {
  List attendlist = [];

  Future<void> fetchpost() async {
    try {
      final attend = await Attendance2Repository().fetchposts();
      setState(() {
        attendlist = attend;
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
                height: 610,
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
                                  fontSize: 17,
                                  color: Page2Colors().textcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 27.87,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 46),
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
                                  fontSize: 17,
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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 37),
                          child: Container(
                            height: 20,
                            width: 113,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Date',
                              style: TextStyle(
                                  color: Page2Colors().text2color,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 20,
                            width: 122,
                            alignment: Alignment.center,
                            child: Text(
                              'Sessions',
                              style: TextStyle(
                                  color: Page2Colors().text2color,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }

  Widget buildListItem(Attendance2 list, int index) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 150, 209, 246),
                border: Border.all(color: Colors.black45, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              title: Text(
                '${list.absentdate}',
                style: const TextStyle(fontSize: 20),
              ),
              trailing: Text('${list.session}'),
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
