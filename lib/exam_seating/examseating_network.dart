import 'dart:convert';
import 'package:flutter_application_1/exam_seating/examseating_model.dart';
import 'package:flutter_application_1/utils/http_error.dart';
import 'package:http/http.dart';

class ExamSeatingRepository {
  static const baseurl = 'https://odooformybusiness.com';

  static Uri uri(String path) {
    return Uri.parse('$baseurl/$path');
  }

  Future<List<ExamSeating>> fetchposts() async {
    try {
      final url = uri('ca_exam_seating');
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
          final seating = body.map((e) => ExamSeating.fromJson(e)).toList();
          return seating;
        } else {
          return [];
        }
      } else {
        throw HttpError('Something went wrong. Please try again later');
      }
    } catch (e) {
      throw HttpError('Error');
    }
  }
}
