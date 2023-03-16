import 'dart:convert';
import 'package:flutter_application_1/attendance/attendance_model.dart';
import 'package:flutter_application_1/utils/http_error.dart';
import 'package:http/http.dart';

class AttendanceRepository {
  static const baseurl = 'https://odooformybusiness.com';

  static Uri uri(String path) {
    return Uri.parse('$baseurl/$path');
  }

  Future<Attendance> fetchposts() async {
    try {
      final url = uri('attendance');
      final response = await post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode({
            "stud_id": "1",
          }));
      if (response.statusCode == 201) {
        final body = jsonDecode(response.body);
        final json = Map<String, dynamic>.from(body);
        final attend = Attendance.fromJson(json);
        return attend;
      } else {
        throw HttpError('Server is Busy');
      }
    } catch (e) {
      throw HttpError('Http error.Try again later');
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
      final url = uri('attendance/details');
      final response = await post(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate, br',
            'Connection': 'keep-alive'
          },
          body: jsonEncode({
            "stud_id": "1",
          }));
      if (response.statusCode == 201) {
        final body = jsonDecode(response.body);
        if (body is List) {
          final attend = body.map((e) => Attendance2.fromJson(e)).toList();
          return attend;
        } else {
          return [];
        }
      } else {
        throw HttpError('Server is Busy.Try again later');
      }
    } catch (e) {
      throw HttpError('Http error.Try again later');
    }
  }
}
