import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance/attendance_design.dart';
import 'package:flutter_application_1/attendance/attendance_page2_design.dart';
import 'package:flutter_application_1/exam_seating/examseating_listview.dart';
import 'package:flutter_application_1/simple/view/design.dart';
import 'package:flutter_application_1/simple/view/page2.dart';
import 'package:go_router/go_router.dart';

class AttendanceRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomePage());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.seemoreRouteName,
        path: '/secondpage',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AttendancePage2Design());
        },
      ),
      GoRoute(
        path: '/thirdpage',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SecondPage());
        },
      ),
    ]);
    return router;
  }
}

class MyAppRouteConstants {
  static const String homeRouteName = 'home';
  static const String seemoreRouteName = 'seemore';
  static const String profileRouteName = 'profile';
  static const String contactUsRouteName = 'contact_us';
}
