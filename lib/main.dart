import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance/attendance_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser:
          AttendanceRouter.returnRouter(false).routeInformationParser,
      routerDelegate: AttendanceRouter.returnRouter(false).routerDelegate,
    );
  }
}
