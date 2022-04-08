import 'dart:convert';
import 'dart:io';

import 'package:news_app/constants/api_path.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/module/dashboard/model/news_model.dart';

class ApiService {
  ApiService._();
  static final ApiService _instance = ApiService._();
  static ApiService get instance => _instance;

  Future getEverythingNews({String search = 'sports', int page = 1}) async {
    String params = "q=$search&pageSize=10&page=$page";
    var headers = {'Authorization': apiKey};
    String url = everythingUrl + params;
    Uri uri = Uri.parse(url);

    try {
      // var request = http.Request('GET', uri);
      http.Response response = await http.get(uri, headers: headers);

      // request.headers.addAll(headers);

      // http.StreamedResponse response = await request.send();
      // http.Response response = await http.get(uri);
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
  Future getTopHeadline({String country = 'uk', int page = 1}) async {
    String params = "q=$country&pageSize=10&page=$page";
    var headers = {'Authorization': apiKey};
    String url = topHeadlineUrl + params;
    Uri uri = Uri.parse(url);

    try {
      // var request = http.Request('GET', uri);
      http.Response response = await http.get(uri, headers: headers);

      // request.headers.addAll(headers);

      // http.StreamedResponse response = await request.send();
      // http.Response response = await http.get(uri);
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
