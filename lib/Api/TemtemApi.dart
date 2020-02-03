import 'dart:convert';
import 'package:http/http.dart' as http;

/// Class to connect to the Api using GET Http's request
/// Credits: https://temtem-api.mael.tech/
class TemtemApi {
  final baseUrl = "https://temtem-api.mael.tech";

  // Api's routes
  final allTemtems = "/api/temtems";
  final temtem = "/api/temtems/";
  final types = "/api/types";
  final conditions = "/api/conditions";
  final techniques = "/api/techniques";
  final traits = "/api/traits";
  final gear = "/api/gear";

  Future getAllTemtem() async {
    var response = await http.get("$baseUrl$allTemtems");
    if (response.statusCode == 200)
      return jsonDecode(response.body);
    else
      throw Exception("Failed to get Temtems");
  }
}
