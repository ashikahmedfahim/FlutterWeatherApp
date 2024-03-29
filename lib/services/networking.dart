import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    var weatherData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return weatherData;
    }
  }
}
