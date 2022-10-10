import 'dart:convert';
import 'package:http/http.dart' as http;

class Network {
  final String url;
  Network({required this.url});

  void getData() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } catch (e) {
      print(e);
    }
  }
}
