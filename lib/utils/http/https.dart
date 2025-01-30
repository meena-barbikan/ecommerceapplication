import 'dart:convert';

import 'package:http/http.dart' as http;

class ThttpsHelper {
  final String baseurl = "";

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse(endpoint));
    return _handleresponse(response);
  }

  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse(endpoint),
        body: json.encode(data), headers: {"Content-Type": "application/json"});
    return _handleresponse(response);
  }

  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse(endpoint),
        body: json.encode(data), headers: {"Content-Type": "application/json"});
    return _handleresponse(response);
  }

  static Future<Map<String, dynamic>> delete(
    String endpoint,
  ) async {
    final response = await http.delete(
      Uri.parse(endpoint),
    );

    return _handleresponse(response);
  }

  static Map<String, dynamic> _handleresponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to Load data ${response.statusCode}");
    }
  }
}
