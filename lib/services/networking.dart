import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({required this.url});

  Future getData() async {
    Uri url = Uri.parse(this.url);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return Map<String, dynamic>.from(jsonDecode(data));
    } else {
      print(response.statusCode);
    }
  }
}
