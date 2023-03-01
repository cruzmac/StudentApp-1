import 'dart:convert';

import 'package:flutter_application_1/attendance/attendance_model.dart';
import 'package:http/http.dart';

class AttendanceRepository {
  static const baseurl = 'https://odooformybusiness.com';

  static Uri uri(String path) {
    return Uri.parse('$baseurl/$path');
  }

  Future<Attendance> fetchposts() async {
    try {
      final url = uri('attendance/1');
      final response = await get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final body = jsonDecode(response.body);
        if (body is Map) {
          final json = Map<String, dynamic>.from(body);
          final attend = Attendance.fromJson(json);
          return attend;
        } else {
          return Attendance();
        }
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception('Error');
    }
  }
}

class Attendance2Repository {
  static const baseurl = 'https://odooformybusiness.com';

  static Uri uri(String path) {
    return Uri.parse('$baseurl/$path');
  }

  Future<List<Attendance2>> fetchposts() async {
    try {
      final url = uri('attendance2/1');
      final response = await get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final body = jsonDecode(response.body);
        if (body is List) {
          final attend = body.map((e) => Attendance2.fromJson(e)).toList();
          return attend;
        } else {
          return [];
        }
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception('Error');
    }
  }
}
