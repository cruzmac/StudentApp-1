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
  List<Attendance2> attendlist = [];

  @override
  void initState() {
    super.initState();
    fetchpost();
  }

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
                  color: Page2Colors().yellow,
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
                                  fontSize: 14,
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
                                  fontSize: 14,
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
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            padding: const EdgeInsets.only(left: 5),
                            height: 20,
                            width: 113,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Page2Colors().ash,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Date',
                              style: TextStyle(
                                  color: Page2Colors().text2color,
                                  fontSize: 12),
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
                            decoration: BoxDecoration(
                                color: Page2Colors().ash,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Sessions',
                              style: TextStyle(
                                  color: Page2Colors().text2color,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 44),
                      child: SizedBox(
                        height: 400,
                        width: 200,
                        child: ListView.builder(
                          itemCount: attendlist.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                '${attendlist[index].absentDate},',
                                style: TextStyle(
                                    fontSize: 10, color: Page2Colors().ash),
                              ),
                              trailing: Text(
                                '${attendlist[index].session}',
                                style: TextStyle(
                                    fontSize: 10, color: Page2Colors().ash),
                              ),
                            );
                          },
                        ),
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
