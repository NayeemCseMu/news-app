import 'dart:convert';
import 'dart:io';

import 'package:news_app/constants/api_path.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/module/dashboard/model/news_model.dart';

class ApiService {
  ApiService._();
  static final ApiService _instance = ApiService._();
  static ApiService get instance => _instance;

  Future newsGetRequest() async {
    String url = techNewsUrl + apiKey;
    Uri uri = Uri.parse(url);

    try {
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final result = NewsModel.fromJson(responseData);
        return result;
      }
    } on SocketException {
      throw "";
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
