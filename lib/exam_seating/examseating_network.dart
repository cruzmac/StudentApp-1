import 'dart:convert';
import 'package:flutter_application_1/exam_seating/examseating_model.dart';
import 'package:http/http.dart';

class ExamSeatingRepository {
  static const baseurl = 'https://odooformybusiness.com';

  static Uri uri(String path) {
    return Uri.parse('$baseurl/$path');
  }

  Future<List<ExamSeating>> fetchposts() async {
    try {
      final url = uri('examseating/1');
      final response = await get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final body = jsonDecode(response.body);
        if (body is List) {
          final seating = body.map((e) => ExamSeating.fromJson(e)).toList();
          return seating;
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
