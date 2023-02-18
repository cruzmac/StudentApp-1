import 'package:flutter/material.dart';

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
                Stack(
                  children: [
                    Container(
                    decoration: const BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(58),bottomRight: Radius.circular(58))),
                    height: 390,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 130,left: 40,right: 40,),
                    child: Container(
                      height: 611,
                      width: 312,
                      decoration:const  BoxDecoration(
                        color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 40,left: 27),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 22,
                                    width: 126,
                                    color: Colors.white,
                                    child:const  Text('Absent days'),
                                  ),
                                ),
                                const SizedBox(width: 27.87,),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,right: 49),
                                      child: Container(
                                        decoration:const  BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        alignment: Alignment.center,
                                        height: 20,
                                        width: 82,
                                        child: const Text('20'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Container(
                                        color: Colors.amber,
                                        height: 12,
                                        width: 39,
                                        child: Text('See more...'),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 36,),
                            Column(
                              children: [
                                Padding(padding:const EdgeInsets.only(left: 11.83,) ,child:Container(
                                  height: 36,
                                  width: 289.33,
                                  color: Colors.white,
                                  alignment: Alignment.topCenter,
                                  child: const Text('Total no of working days'),
                                ),),
                                Padding(
                                  padding:const EdgeInsets.only(left: 0),
                                  child: Container(
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),  color: Colors.green,),
                                    alignment: Alignment.center,
                                    height: 24,
                                    width: 94,
                                    child: const Text('100'),
                                  ))
                              ],
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
