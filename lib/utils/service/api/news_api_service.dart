import 'dart:io';

import 'package:news_app/constants/api_path.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future newsGetRequest() async {
    String url = techNewsUrl + apiKey;
    Uri uri = Uri.parse(url);

    try {
      http.Response response = await http.get(uri);
    } on SocketException {
      throw "";
    } catch (e) {
      print(e.toString());
    }
  }
}
