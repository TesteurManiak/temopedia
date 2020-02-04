import 'dart:convert';
import 'package:http/http.dart' as http;

class TemtemApi {
  final _baseUrl = "https://temtem-api.mael.tech";

  // Api's routes
  static final allTemtems = "/api/temtems";
  static final temtem = "/api/temtems/";
  static final types = "/api/types";
  static final conditions = "/api/conditions";
  static final techniques = "/api/techniques";
  static final traits = "/api/traits";
  static final gear = "/api/gear";

  /// Make a GET request on the API's Url
  /// If response status is valid the method return the decoded
  /// [response.body].
  /// Else it will throw an [Exception].
  Future getRequest(String request) async {
    var response = await http.get("$_baseUrl$request");
    if (response.statusCode == 200)
      return jsonDecode(response.body);
    else
      throw Exception("Failed to get request: $request");
  }
}
