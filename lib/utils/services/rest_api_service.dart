import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiService {
  static Future<Response> getApi({
    required String baseUrl,
    required String endpoint,
    Map<String, String>? apiHeader,
  }) async {
    final url = Uri.parse(baseUrl + endpoint);
    var response = http.get(url, headers: apiHeader);
    return response;
  }
}
